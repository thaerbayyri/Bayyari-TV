package com.bayyari.tv.util

import java.util.Properties

object TestServerConfig {
    private val props: Properties = Properties()

    init {
        try {
            val stream = Thread.currentThread().contextClassLoader.getResourceAsStream("test_server.properties")
            if (stream != null) {
                props.load(stream)
            }
        } catch (_: Exception) {
        }
    }

    fun hasRealServer(): Boolean = props.getProperty("server.url")?.isNotBlank() == true

    fun get(key: String): String? = props.getProperty(key)
}
