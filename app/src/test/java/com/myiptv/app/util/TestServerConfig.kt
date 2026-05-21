package com.myiptv.app.util

import java.util.Properties

object TestServerConfig {
    private val props = Properties().apply {
        val stream = TestServerConfig::class.java.classLoader?.getResourceAsStream("test_server.properties")
        if (stream != null) load(stream)
    }

    val serverUrl: String get() = props.getProperty("server.url", "http://localhost:8080")
    val username: String get() = props.getProperty("server.username", "test_user")
    val password: String get() = props.getProperty("server.password", "test_pass")
    val liveStreamId: Int get() = props.getProperty("test.stream.live_id", "1").toInt()
    val movieId: Int get() = props.getProperty("test.stream.movie_id", "1").toInt()
    val episodeId: Int get() = props.getProperty("test.stream.series_episode_id", "1").toInt()
    val isRealServerAvailable: Boolean get() = serverUrl != "http://localhost:8080"
}
