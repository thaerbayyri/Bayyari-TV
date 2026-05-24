package com.myiptv.app

import android.content.Context
import androidx.test.core.app.ApplicationProvider
import java.util.Properties

object AndroidTestServerConfig {
    private val props = Properties().apply {
        val context = ApplicationProvider.getApplicationContext<Context>()
        runCatching {
            context.assets.open("test_server.properties").use { load(it) }
        }
    }

    val serverUrl: String get() = props.getProperty("server.url", "http://localhost:8080")
    val username: String get() = props.getProperty("server.username", "test_user")
    val password: String get() = props.getProperty("server.password", "test_pass")
    val liveStreamId: Int get() = props.getProperty("test.stream.live_id", "1").toInt()
    val movieId: Int get() = props.getProperty("test.stream.movie_id", "1").toInt()
    val episodeId: Int get() = props.getProperty("test.stream.series_episode_id", "1").toInt()
    val isRealServerAvailable: Boolean get() =
        serverUrl != "http://localhost:8080" && !serverUrl.contains("YOUR_TEST_SERVER", ignoreCase = true)
}
