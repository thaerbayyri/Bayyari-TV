package com.bayyari.tv.update

import android.app.Activity
import android.content.ActivityNotFoundException
import android.content.Context
import android.content.Intent
import android.content.pm.PackageInfo
import android.content.pm.PackageManager
import android.content.pm.Signature
import android.net.Uri
import android.os.Build
import android.provider.Settings
import android.util.Log
import androidx.core.content.FileProvider
import com.bayyari.tv.BuildConfig
import com.bayyari.tv.util.Constants
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import okhttp3.OkHttpClient
import okhttp3.Request
import org.json.JSONObject
import java.io.File
import java.io.IOException
import java.net.URI
import java.security.MessageDigest
import java.util.Locale

/**
 * Website manifest based updater for testing builds distributed outside Google Play.
 *
 * The Android package installer enforces the critical production rules for us:
 * the downloaded APK can only update this app when it has the same package name
 * and is signed with the same signing key. This class never attempts silent install.
 */
class UpdateManager(
    private val context: Context,
    private val client: OkHttpClient = OkHttpClient()
) {

    suspend fun checkLatestRelease(): CheckResult = withContext(Dispatchers.IO) {
        val manifestUrl = cacheBustedManifestUrl()
        Log.i(TAG, "Checking update manifest: $manifestUrl")

        val request = Request.Builder()
            .url(manifestUrl)
            .header("Accept", "application/json")
            .header("Cache-Control", "no-cache, no-store, max-age=0")
            .header("Pragma", "no-cache")
            .header("User-Agent", "Bayyari-TV/${BuildConfig.VERSION_NAME}")
            .build()

        runCatching {
            client.newCall(request).execute().use { response ->
                if (!response.isSuccessful) {
                    throw IOException("Update check failed: HTTP ${response.code}")
                }
                val body = response.body?.string().orEmpty()
                parseUpdateManifest(body)
            }
        }.getOrElse { error ->
            Log.e(TAG, "Update check failed", error)
            CheckResult.Error(error.message ?: "Update check failed")
        }
    }

    suspend fun downloadApk(update: AvailableUpdate): DownloadResult = withContext(Dispatchers.IO) {
        Log.i(TAG, "Downloading update ${update.displayVersion} from ${update.apkUrl}")
        val request = Request.Builder()
            .url(update.apkUrl)
            .header("User-Agent", "Bayyari-TV/${BuildConfig.VERSION_NAME}")
            .build()

        runCatching {
            client.newCall(request).execute().use { response ->
                if (!response.isSuccessful) {
                    throw IOException("APK download failed: HTTP ${response.code}")
                }

                val body = response.body ?: throw IOException("APK response body was empty")
                val target = updateApkFile()
                target.parentFile?.mkdirs()
                target.outputStream().use { output ->
                    body.byteStream().use { input -> input.copyTo(output) }
                }

                if (!target.exists() || target.length() <= 0L) {
                    throw IOException("Downloaded APK is empty")
                }
                if (update.apkSha256.isNotBlank()) {
                    val actualHash = sha256Hex(target)
                    if (!actualHash.equals(update.apkSha256, ignoreCase = true)) {
                        target.delete()
                        throw IOException("Downloaded APK hash did not match update.json")
                    }
                }

                Log.i(TAG, "APK downloaded to ${target.absolutePath}, bytes=${target.length()}")
                DownloadResult.Success(target)
            }
        }.getOrElse { error ->
            Log.e(TAG, "APK download failed", error)
            DownloadResult.Error(error.message ?: "APK download failed")
        }
    }

    fun cachedUpdateApk(): File? {
        val file = updateApkFile()
        if (!file.exists() || file.length() <= 0L) return null
        // If the cached APK is no longer newer than the currently installed app (because the
        // install already succeeded), delete the stale file so the UI doesn't keep showing
        // "Update ready" or try to re-install the same version.
        runCatching {
            val archiveInfo = context.packageManager.getPackageArchiveInfo(file.absolutePath, 0)
            val installedInfo = context.packageManager.getPackageInfo(context.packageName, 0)
            if (archiveInfo != null && installedInfo != null && !isArchiveNewer(archiveInfo, installedInfo)) {
                file.delete()
                return null
            }
        }
        return file
    }

    fun canRequestPackageInstalls(): Boolean {
        return Build.VERSION.SDK_INT < Build.VERSION_CODES.O ||
            context.packageManager.canRequestPackageInstalls()
    }

    fun unknownSourcesSettingsIntent(): Intent {
        return Intent(
            Settings.ACTION_MANAGE_UNKNOWN_APP_SOURCES,
            Uri.parse("package:${context.packageName}")
        )
    }

    fun startInstall(activity: Activity, apkFile: File): InstallStartResult {
        if (!apkFile.exists() || apkFile.length() <= 0L) {
            Log.e(TAG, "Install requested with missing or empty APK: ${apkFile.absolutePath}")
            return InstallStartResult.Error("Downloaded APK is missing")
        }

        if (!canRequestPackageInstalls()) {
            Log.i(TAG, "Unknown app install permission is required")
            return InstallStartResult.PermissionRequired
        }

        verifyApkMatchesCurrentApp(apkFile)?.let { error ->
            Log.e(TAG, "APK verification failed: $error")
            return InstallStartResult.Error(error)
        }

        val apkUri = FileProvider.getUriForFile(
            activity,
            "${activity.packageName}.fileprovider",
            apkFile
        )

        return try {
            Log.i(TAG, "Opening package installer for ${apkFile.name}")
            activity.startActivity(installPackageIntent(apkUri))
            InstallStartResult.Started
        } catch (error: ActivityNotFoundException) {
            runCatching {
                Log.w(TAG, "ACTION_INSTALL_PACKAGE unavailable; falling back to ACTION_VIEW", error)
                activity.startActivity(viewPackageIntent(apkUri))
                InstallStartResult.Started
            }.getOrElse { fallbackError ->
                Log.e(TAG, "No package installer found", fallbackError)
                InstallStartResult.Error("No package installer found")
            }
        } catch (error: Exception) {
            Log.e(TAG, "Install intent failed", error)
            InstallStartResult.Error(error.message ?: "Install failed")
        }
    }

    private fun installPackageIntent(apkUri: Uri): Intent {
        return Intent(Intent.ACTION_INSTALL_PACKAGE).apply {
            setDataAndType(apkUri, APK_MIME_TYPE)
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            putExtra(Intent.EXTRA_NOT_UNKNOWN_SOURCE, true)
            putExtra(Intent.EXTRA_RETURN_RESULT, true)
        }
    }

    private fun viewPackageIntent(apkUri: Uri): Intent {
        return Intent(Intent.ACTION_VIEW).apply {
            setDataAndType(apkUri, APK_MIME_TYPE)
            addFlags(Intent.FLAG_GRANT_READ_URI_PERMISSION)
            putExtra(Intent.EXTRA_NOT_UNKNOWN_SOURCE, true)
        }
    }

    @Suppress("DEPRECATION")
    private fun verifyApkMatchesCurrentApp(apkFile: File): String? {
        val packageManager = context.packageManager
        val archiveInfo = packageManager.getPackageArchiveInfo(
            apkFile.absolutePath,
            signatureFlags()
        ) ?: return "Downloaded APK could not be parsed"

        if (archiveInfo.packageName != context.packageName) {
            return "Downloaded APK package is ${archiveInfo.packageName}; expected ${context.packageName}"
        }

        val installedInfo = packageManager.getPackageInfo(context.packageName, signatureFlags())
        if (!isArchiveNewer(archiveInfo, installedInfo)) {
            return "Downloaded APK is not newer than the installed app"
        }

        val archiveSignatures = archiveInfo.signaturesCompat()
        val installedSignatures = installedInfo.signaturesCompat()
        if (archiveSignatures.isEmpty() || installedSignatures.isEmpty()) {
            return "Downloaded APK signature could not be verified"
        }

        val signaturesMatch = archiveSignatures.any { archiveSignature ->
            installedSignatures.any { installedSignature ->
                archiveSignature.toByteArray().contentEquals(installedSignature.toByteArray())
            }
        }
        return if (signaturesMatch) null else "Downloaded APK is not signed with this app's signing key"
    }

    private fun isArchiveNewer(archiveInfo: PackageInfo, installedInfo: PackageInfo): Boolean {
        val archiveCode = archiveInfo.versionCodeCompat()
        val installedCode = installedInfo.versionCodeCompat()
        if (archiveCode > installedCode) return true
        if (archiveCode < installedCode) return false
        return compareVersions(
            archiveInfo.versionName.orEmpty(),
            installedInfo.versionName.orEmpty()
        ) > 0
    }

    private fun signatureFlags(): Int {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            PackageManager.GET_SIGNING_CERTIFICATES
        } else {
            @Suppress("DEPRECATION")
            PackageManager.GET_SIGNATURES
        }
    }

    @Suppress("DEPRECATION")
    private fun PackageInfo.signaturesCompat(): Array<Signature> {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            signingInfo?.apkContentsSigners ?: emptyArray()
        } else {
            signatures ?: emptyArray()
        }
    }

    @Suppress("DEPRECATION")
    private fun PackageInfo.versionCodeCompat(): Long {
        return if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.P) {
            longVersionCode
        } else {
            versionCode.toLong()
        }
    }

    private fun parseUpdateManifest(body: String): CheckResult {
        val json = JSONObject(body)
        val versionCode = json.optLong("versionCode", -1L)
        val versionName = json.optString("versionName").trim()
        val apkUrl = json.optString("apkUrl").trim().ifBlank { Constants.UPDATE_APK_URL }
        val apkSha256 = json.optString("apkSha256").trim()
        val releaseNotes = json.optString("releaseNotes").trim()

        if (versionCode <= 0L && versionName.isBlank()) {
            return CheckResult.Error("update.json must include versionCode or versionName")
        }
        val resolvedApkUrl = resolveAgainstManifest(apkUrl)
        val installed = installedVersion()
        val isNewer = isNewerVersion(
            latestCode = versionCode,
            latestName = versionName,
            currentCode = installed.code,
            currentName = installed.name
        )
        Log.i(
            TAG,
            "Manifest versionCode=$versionCode versionName=$versionName " +
                "currentCode=${installed.code} currentName=${installed.name} isNewer=$isNewer"
        )

        return if (isNewer) {
            CheckResult.UpdateAvailable(
                AvailableUpdate(
                    versionCode = versionCode,
                    versionName = versionName.ifBlank { versionCode.toString() },
                    apkUrl = resolvedApkUrl,
                    apkSha256 = apkSha256,
                    releaseNotes = releaseNotes
                )
            )
        } else {
            CheckResult.NoUpdate
        }
    }

    private fun resolveAgainstManifest(apkUrl: String): String {
        return if (apkUrl.startsWith("http://", ignoreCase = true) ||
            apkUrl.startsWith("https://", ignoreCase = true)
        ) {
            apkUrl
        } else {
            URI(Constants.UPDATE_JSON_URL).resolve(apkUrl).toString()
        }
    }

    private fun cacheBustedManifestUrl(): String {
        val separator = if (Constants.UPDATE_JSON_URL.contains("?")) "&" else "?"
        return "${Constants.UPDATE_JSON_URL}${separator}ts=${System.currentTimeMillis()}"
    }

    fun installedVersion(): InstalledVersion {
        return runCatching {
            val info = context.packageManager.getPackageInfo(context.packageName, 0)
            InstalledVersion(
                code = info.versionCodeCompat(),
                name = info.versionName.orEmpty()
            )
        }.getOrElse {
            InstalledVersion(
                code = BuildConfig.VERSION_CODE.toLong(),
                name = BuildConfig.VERSION_NAME
            )
        }
    }

    private fun updateApkFile(): File = File(context.cacheDir, "updates/${Constants.APK_ASSET_NAME}")

    private fun sha256Hex(file: File): String {
        val digest = MessageDigest.getInstance("SHA-256")
        file.inputStream().use { input ->
            val buffer = ByteArray(DEFAULT_BUFFER_SIZE)
            while (true) {
                val read = input.read(buffer)
                if (read <= 0) break
                digest.update(buffer, 0, read)
            }
        }
        return digest.digest().joinToString(separator = "") { byte -> "%02x".format(byte) }
    }

    companion object {
        private const val TAG = "UpdateManager"
        private const val APK_MIME_TYPE = "application/vnd.android.package-archive"

        internal fun compareVersions(latest: String, current: String): Int {
            val latestParts = latest.toVersionParts()
            val currentParts = current.toVersionParts()
            val max = maxOf(latestParts.size, currentParts.size)
            for (index in 0 until max) {
                val l = latestParts.getOrElse(index) { 0 }
                val c = currentParts.getOrElse(index) { 0 }
                if (l != c) return l.compareTo(c)
            }
            return 0
        }

        internal fun isNewerVersion(
            latestCode: Long,
            latestName: String,
            currentCode: Long = BuildConfig.VERSION_CODE.toLong(),
            currentName: String = BuildConfig.VERSION_NAME
        ): Boolean {
            if (latestCode > currentCode) return true
            if (latestCode in 1 until currentCode) return false
            return latestName.isNotBlank() && compareVersions(latestName, currentName) > 0
        }

        private fun String.toVersionParts(): List<Int> {
            return lowercase(Locale.US)
                .substringBefore('-')
                .trimStart('v')
                .split('.')
                .map { part -> part.takeWhile { it.isDigit() }.toIntOrNull() ?: 0 }
        }
    }
}

data class AvailableUpdate(
    val versionCode: Long,
    val versionName: String,
    val apkUrl: String,
    val apkSha256: String,
    val releaseNotes: String
) {
    val displayVersion: String = if (versionName.startsWith("v", ignoreCase = true)) {
        versionName
    } else {
        "v$versionName"
    }
}

data class InstalledVersion(
    val code: Long,
    val name: String
)

sealed class CheckResult {
    data class UpdateAvailable(val update: AvailableUpdate) : CheckResult()
    object NoUpdate : CheckResult()
    data class Error(val message: String) : CheckResult()
}

sealed class DownloadResult {
    data class Success(val apkFile: File) : DownloadResult()
    data class Error(val message: String) : DownloadResult()
}

sealed class InstallStartResult {
    object Started : InstallStartResult()
    object PermissionRequired : InstallStartResult()
    data class Error(val message: String) : InstallStartResult()
}
