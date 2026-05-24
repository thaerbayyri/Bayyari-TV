package com.bayyari.tv

import android.app.Application
import android.os.Handler
import android.os.Looper
import android.util.Log
import androidx.hilt.work.HiltWorkerFactory
import androidx.work.Configuration
import com.bayyari.tv.data.work.RefreshScheduler
import com.bayyari.tv.util.CrashReporter
import dagger.hilt.android.HiltAndroidApp
import kotlinx.coroutines.CoroutineScope
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.SupervisorJob
import kotlinx.coroutines.launch
import javax.inject.Inject
import javax.inject.Provider

/**
 * Application entry point. Owns Hilt graph and the Hilt-aware WorkManager configuration.
 *
 * IMPORTANT: nothing in [onCreate] is allowed to crash the whole app. Each side effect (crash
 * handler install, work scheduling, telemetry) is wrapped so a failure in any one of them logs
 * and continues, instead of taking the app down before MainActivity gets a chance to render.
 */
@HiltAndroidApp
class MyIptvApp : Application(), Configuration.Provider {

    @Inject
    lateinit var workerFactory: HiltWorkerFactory

    @Inject
    lateinit var refreshScheduler: Provider<RefreshScheduler>

    @Inject
    lateinit var crashReporter: CrashReporter

    private val appScope = CoroutineScope(SupervisorJob() + Dispatchers.IO)

    override val workManagerConfiguration: Configuration
        get() = Configuration.Builder()
            .setWorkerFactory(workerFactory)
            .setMinimumLoggingLevel(Log.INFO)
            .build()

    override fun onCreate() {
        super.onCreate()
        runSafely("install crash handler") { crashReporter.install() }
        deferAfterLaunch {
            runSafely("schedule refresh worker") { refreshScheduler.get().schedule() }
            runSafely("log app start") { crashReporter.log("App started v=${BuildConfig.VERSION_NAME}") }
        }
    }

    private fun deferAfterLaunch(block: () -> Unit) {
        Handler(Looper.getMainLooper()).post {
            appScope.launch { block() }
        }
    }

    private inline fun runSafely(label: String, block: () -> Unit) {
        try {
            block()
        } catch (t: Throwable) {
            Log.e(TAG, "Init failure during '$label'", t)
            runCatching { crashReporter.recordException(t) }
        }
    }

    companion object {
        private const val TAG = "BayyariApp"
    }
}
