package com.myiptv.app.util

import java.util.Properties

object TestServerConfig {
    private val props = Properties().apply {
        val stream = TestServerConfig::class.java.classLoader?.getResourceAsStream("test_server.properties")
        if (stream != null) load(stream)
    }

    val serverUrl: String get() = value("server.url", "TEST_SERVER_URL", "http://localhost:8080")
    val username: String get() = value("server.username", "TEST_SERVER_USER", "test_user")
    val password: String get() = value("server.password", "TEST_SERVER_PASS", "test_pass")
    val liveStreamId: Int get() = value("test.stream.live_id", "TEST_LIVE_STREAM_ID", "1").toInt()
    val movieId: Int get() = value("test.stream.movie_id", "TEST_MOVIE_ID", "1").toInt()
    val episodeId: Int get() = value("test.stream.series_episode_id", "TEST_EPISODE_ID", "1").toInt()
    val isRealServerAvailable: Boolean get() =
        serverUrl != "http://localhost:8080" && !serverUrl.contains("YOUR_TEST_SERVER", ignoreCase = true)

    private fun value(propertyName: String, envName: String, defaultValue: String): String {
        return System.getProperty(propertyName)
            ?: System.getenv(envName)
            ?: props.getProperty(propertyName, defaultValue)
    }
}
