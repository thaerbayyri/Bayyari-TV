package com.bayyari.tv.update

import android.content.Intent
import android.util.Log
import androidx.activity.result.ActivityResultLauncher
import androidx.appcompat.app.AlertDialog
import androidx.appcompat.app.AppCompatActivity
import androidx.lifecycle.lifecycleScope
import com.bayyari.tv.R
import com.bayyari.tv.util.toast
import kotlinx.coroutines.launch
import java.io.File

class StartupUpdateController(
    private val activity: AppCompatActivity,
    private val updateManager: UpdateManager,
    private val installPermissionLauncher: ActivityResultLauncher<Intent>,
    private val tag: String
) {
    private var pendingUpdateApk: File? = null
    private var updateDialog: AlertDialog? = null

    fun checkOnOpen() {
        activity.lifecycleScope.launch {
            when (val check = updateManager.checkLatestRelease()) {
                CheckResult.NoUpdate -> Log.i(tag, "No update available on startup")
                is CheckResult.Error -> Log.w(tag, "Startup update check failed: ${check.message}")
                is CheckResult.UpdateAvailable -> showUpdateAvailablePrompt(check.update)
            }
        }
    }

    fun checkManually() {
        activity.lifecycleScope.launch {
            activity.toast(activity.getString(R.string.update_checking))
            when (val check = updateManager.checkLatestRelease()) {
                CheckResult.NoUpdate -> activity.toast(activity.getString(R.string.update_none))
                is CheckResult.Error -> activity.toast("Update check failed: ${check.message}")
                is CheckResult.UpdateAvailable -> showUpdateAvailablePrompt(check.update)
            }
        }
    }

    fun onInstallPermissionResult() {
        if (updateManager.canRequestPackageInstalls()) {
            pendingUpdateApk?.let { startInstall(it) }
        } else {
            activity.toast(activity.getString(R.string.update_install_permission))
        }
    }

    private fun showUpdateAvailablePrompt(update: AvailableUpdate) {
        if (activity.isFinishing || activity.isDestroyed) return
        if (updateDialog?.isShowing == true) return

        val releaseNotes = update.releaseNotes
            .takeIf { it.isNotBlank() }
            ?.let { "\n\n$it" }
            .orEmpty()
        updateDialog = AlertDialog.Builder(activity)
            .setTitle(R.string.update_available)
            .setMessage(activity.getString(R.string.update_available_message, update.displayVersion, releaseNotes))
            .setNegativeButton(R.string.update_later, null)
            .setPositiveButton(R.string.update_install_now) { _, _ ->
                activity.lifecycleScope.launch {
                    downloadAndInstallUpdate(update)
                }
            }
            .create()
            .also { dialog ->
                dialog.setOnDismissListener {
                    if (updateDialog === dialog) updateDialog = null
                }
                dialog.show()
            }
    }

    private suspend fun downloadAndInstallUpdate(update: AvailableUpdate) {
        if (activity.isFinishing || activity.isDestroyed) return
        // Reuse cached APK if it is already the right version so we skip redundant downloads.
        val cached = updateManager.cachedUpdateApk()
        if (cached != null) {
            startInstall(cached)
            return
        }
        activity.toast(activity.getString(R.string.update_downloading))
        when (val download = updateManager.downloadApk(update)) {
            is DownloadResult.Error -> activity.toast(activity.getString(R.string.update_download_failed))
            is DownloadResult.Success -> {
                activity.toast(activity.getString(R.string.update_download_complete))
                startInstall(download.apkFile)
            }
        }
    }

    private fun startInstall(apkFile: File) {
        pendingUpdateApk = apkFile
        when (val install = updateManager.startInstall(activity, apkFile)) {
            InstallStartResult.Started -> activity.toast(activity.getString(R.string.update_install_started))
            InstallStartResult.PermissionRequired -> {
                activity.toast(activity.getString(R.string.update_install_permission))
                installPermissionLauncher.launch(updateManager.unknownSourcesSettingsIntent())
            }
            is InstallStartResult.Error -> activity.toast(install.message)
        }
    }
}
