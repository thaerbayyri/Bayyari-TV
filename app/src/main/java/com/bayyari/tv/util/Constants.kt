package com.bayyari.tv.util

object Constants {
    const val DB_NAME = "bayyari.db"
    const val SECURE_PREFS = "bayyari_secure"
    const val APP_PREFS = "bayyari_prefs"

    // Network
    const val CONNECT_TIMEOUT_SECONDS = 20L
    const val READ_TIMEOUT_SECONDS = 90L   // large catalogs (21k movies) can be 10–20 MB
    const val WRITE_TIMEOUT_SECONDS = 30L
    const val DB_UPSERT_CHUNK_SIZE = 500   // batch size for bulk Room inserts

    // Player
    const val MIN_BUFFER_MS = 5_000
    const val MAX_BUFFER_MS = 30_000
    const val BUFFER_FOR_PLAYBACK_MS = 1_000
    const val BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS = 3_000
    const val PLAYER_RETRY_COUNT = 3
    const val PLAYER_RETRY_BACKOFF_BASE_MS = 800L
    const val PLAYER_CONTROLS_AUTO_HIDE_MS = 5_000L

    // Catch-up
    const val CATCHUP_MAX_DAYS_BACK = 7

    // Refresh job
    const val REFRESH_WORK_NAME = "bayyari_refresh"
    const val REFRESH_INTERVAL_HOURS = 6L

    // External players
    const val PKG_VLC = "org.videolan.vlc"
    const val PKG_MX_PRO = "com.mxtech.videoplayer.pro"
    const val PKG_MX_FREE = "com.mxtech.videoplayer.ad"

    // Pref keys
    const val PREF_ACTIVE_SERVER = "active_server_id"
    const val PREF_HAS_ACTIVE_SERVER = "has_active_server"
    const val PREF_SERVERS_JSON = "servers_json"
    const val PREF_REMEMBER_LOGIN = "remember_login"
    const val PREF_DEFAULT_PLAYER = "default_player"
    const val PREF_STREAM_FORMAT = "stream_format"
    const val PREF_BUFFER_SIZE = "buffer_size_ms"
    const val PREF_AUTO_PLAY_NEXT = "auto_play_next"
    const val PREF_PARENTAL_PIN = "parental_pin"
    const val PREF_LAST_CHANNEL_ID = "last_channel_id"
    const val PREF_HIDDEN_LIVE_CATEGORIES = "hidden_live_categories"
    const val PREF_HIDDEN_MOVIE_CATEGORIES = "hidden_movie_categories"
    const val PREF_HIDDEN_SERIES_CATEGORIES = "hidden_series_categories"
    const val PREF_LIVE_SORT_MODE = "live_sort_mode"
    const val PREF_SERIES_SORT_MODE = "series_sort_mode"
}
