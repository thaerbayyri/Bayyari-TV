package com.bayyari.tv.util

import android.content.Context
import android.util.Log
import dagger.hilt.android.qualifiers.ApplicationContext
import java.io.File
import java.io.PrintWriter
import java.io.StringWriter
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import javax.inject.Inject
import javax.inject.Singleton

interface CrashReporter {
    fun log(message: String)
    fun recordException(throwable: Throwable)
    fun setUserId(userId: String)
    /** Install a JVM uncaught-exception handler that funnels through this reporter. */
    fun install()
}

/**
 * File-backed crash reporter. Writes log lines and stack traces to
 * `<filesDir>/bayyari_crash.log` so we can diagnose runtime crashes from a device that isn't
 * connected to ADB. The file is plain text, capped at ~256 KB (rotated by truncation), and can be
 * pulled via `adb pull /data/data/com.bayyari.tv.debug/files/bayyari_crash.log` or surfaced in the
 * Settings screen later.
 */
@Singleton
class FileCrashReporter @Inject constructor(
    @ApplicationContext private val context: Context
) : CrashReporter {

    private val logFile: File by lazy {
        File(context.filesDir, "bayyari_crash.log").apply {
            if (!exists()) parentFile?.mkdirs()
        }
    }

    private val timestamp: String
        get() = SimpleDateFormat("yyyy-MM-dd HH:mm:ss.SSS", Locale.US).format(Date())

    override fun log(message: String) {
        runCatching {
            rotateIfTooBig()
            logFile.appendText("[$timestamp] $message\n")
        }
        Log.i(TAG, message)
    }

    override fun recordException(throwable: Throwable) {
        runCatching {
            rotateIfTooBig()
            val sw = StringWriter()
            throwable.printStackTrace(PrintWriter(sw))
            logFile.appendText("[$timestamp] EXCEPTION: ${throwable.javaClass.simpleName}: ${throwable.message}\n$sw\n")
        }
        Log.e(TAG, "Recorded exception", throwable)
    }

    override fun setUserId(userId: String) {
        log("userId=$userId")
    }

    override fun install() {
        val previous = Thread.getDefaultUncaughtExceptionHandler()
        Thread.setDefaultUncaughtExceptionHandler { thread, throwable ->
            runCatching {
                recordException(throwable)
                logFile.appendText("[$timestamp] CRASH on thread '${thread.name}'\n")
            }
            previous?.uncaughtException(thread, throwable)
        }
    }

    private fun rotateIfTooBig() {
        if (logFile.exists() && logFile.length() > MAX_BYTES) {
            // Keep the last ~half by re-writing tail.
            val tail = runCatching {
                logFile.readText().takeLast((MAX_BYTES / 2).toInt())
            }.getOrDefault("")
            logFile.writeText("[rotated]\n$tail")
        }
    }

    companion object {
        private const val TAG = "BayyariCrash"
        private const val MAX_BYTES = 256L * 1024L
    }
}
