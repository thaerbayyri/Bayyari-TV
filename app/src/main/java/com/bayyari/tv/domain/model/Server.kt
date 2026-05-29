package com.bayyari.tv.domain.model

import com.bayyari.tv.util.ensureTrailingSlash

/**
 * A configured IPTV backend. Persisted in EncryptedSharedPreferences.
 *
 * @param id stable autoincrement id (1-based; 0 means unsaved)
 * @param label user-facing name
 * @param url base URL (scheme + host + optional port). Trailing slash normalized at use.
 * @param username Xtream username
 * @param password Xtream password
 * @param expiresAtEpochSeconds last known subscription expiry; 0 if unknown
 * @param maxConnections last known max connections; 0 if unknown
 * @param isM3uOnly whether this server is an M3U-only playlist source
 */
data class Server(
    val id: Int = 0,
    val label: String,
    val url: String,
    val username: String,
    val password: String,
    val expiresAtEpochSeconds: Long = 0,
    val maxConnections: Int = 0,
    val isM3uOnly: Boolean = false
) {
    val normalizedUrl: String get() = url.ensureTrailingSlash()
}
