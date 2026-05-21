package com.bayyari.tv.domain.model

data class UserInfo(
    val username: String,
    val status: String,
    val expiresAtEpochSeconds: Long,
    val maxConnections: Int
)
