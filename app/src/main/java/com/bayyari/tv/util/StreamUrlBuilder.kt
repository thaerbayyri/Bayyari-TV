package com.bayyari.tv.util

import java.net.URLEncoder
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.TimeZone
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Builds Xtream Codes stream URLs.
 *
 *  Live HLS:    {server}/live/{user}/{pass}/{stream_id}.m3u8
 *  Live TS:     {server}/live/{user}/{pass}/{stream_id}.ts
 *  Movie:       {server}/movie/{user}/{pass}/{vod_id}.{container_ext}
 *  Episode:     {server}/series/{user}/{pass}/{episode_id}.{container_ext}
 *  Catch-up:    {server}/timeshift/{user}/{pass}/{duration_min}/{YYYY-MM-DD:HH-MM}/{stream_id}.ts
 */
@Singleton
class StreamUrlBuilder @Inject constructor() {

    enum class LiveFormat { HLS, TS }

    fun live(serverUrl: String, user: String, pass: String, streamId: Int, format: LiveFormat): String {
        val ext = when (format) {
            LiveFormat.HLS -> "m3u8"
            LiveFormat.TS -> "ts"
        }
        return "${serverUrl.ensureTrailingSlash()}live/${encode(user)}/${encode(pass)}/$streamId.$ext"
    }

    fun movie(serverUrl: String, user: String, pass: String, vodId: Int, containerExt: String): String {
        val ext = containerExt.ifBlank { "mp4" }
        return "${serverUrl.ensureTrailingSlash()}movie/${encode(user)}/${encode(pass)}/$vodId.$ext"
    }

    fun episode(serverUrl: String, user: String, pass: String, episodeId: Int, containerExt: String): String {
        val ext = containerExt.ifBlank { "mp4" }
        return "${serverUrl.ensureTrailingSlash()}series/${encode(user)}/${encode(pass)}/$episodeId.$ext"
    }

    /**
     * Catch-up timeshift URL. [start] is program start epoch ms, [durationMinutes] is program length.
     */
    fun catchUp(
        serverUrl: String,
        user: String,
        pass: String,
        streamId: Int,
        startEpochMs: Long,
        durationMinutes: Int
    ): String {
        val fmt = SimpleDateFormat("yyyy-MM-dd:HH-mm", Locale.US).apply {
            timeZone = TimeZone.getTimeZone("UTC")
        }
        val ts = fmt.format(Date(startEpochMs))
        return "${serverUrl.ensureTrailingSlash()}timeshift/${encode(user)}/${encode(pass)}/$durationMinutes/$ts/$streamId.ts"
    }

    /** Xtream channel logo URLs are pre-formed, but normalize empty/null to a safe blank. */
    fun logo(rawLogo: String?): String = rawLogo?.takeIf { it.isNotBlank() }?.trim().orEmpty()

    private fun encode(value: String): String = URLEncoder.encode(value, "UTF-8")
        // Retrofit/HTTP path semantics: Xtream treats '+' as literal in path, but URLEncoder uses '+' for space.
        .replace("+", "%20")
}
