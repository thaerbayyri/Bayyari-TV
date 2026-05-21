package com.bayyari.tv.util

import com.bayyari.tv.domain.model.Channel
import javax.inject.Inject
import javax.inject.Singleton
import kotlin.math.abs

/**
 * Streaming M3U / M3U8 parser. Produces [Channel] entries grouped by their `group-title`.
 *
 * Supported attributes on `#EXTINF`:
 *  - tvg-id        → epgChannelId
 *  - tvg-name      → name (overrides title after comma)
 *  - tvg-logo      → streamIcon
 *  - group-title   → categoryId / categoryName
 *
 * Lines beginning with `#` other than `#EXTINF` are treated as headers/comments and skipped.
 */
@Singleton
class M3uParser @Inject constructor() {

    fun parse(content: String, serverId: Int = 0): List<Channel> {
        val lines = content.lineSequence().map { it.trim() }.filter { it.isNotEmpty() }.toList()
        if (lines.isEmpty() || !lines.first().startsWith("#EXTM3U")) return emptyList()

        val out = mutableListOf<Channel>()
        var current: ExtInf? = null
        var fallbackId = -1
        var i = 1
        while (i < lines.size) {
            val line = lines[i]
            when {
                line.startsWith("#EXTINF") -> current = parseExtInf(line)
                line.startsWith("#") -> Unit // ignore other tags (#EXTGRP, #EXTVLCOPT, etc.)
                else -> {
                    val info = current
                    if (info != null) {
                        val streamId = parseStreamIdFromUrl(line) ?: (fallbackId--).also { /* synthetic id */ }
                        out += Channel(
                            streamId = streamId,
                            name = info.name,
                            streamIcon = info.logo,
                            categoryId = info.groupTitle.ifBlank { "uncategorized" },
                            categoryName = info.groupTitle.ifBlank { "Uncategorized" },
                            epgChannelId = info.tvgId,
                            tvArchive = 0,
                            tvArchiveDuration = 0,
                            addedEpochSeconds = 0,
                            serverId = serverId,
                            directStreamUrl = line
                        )
                        current = null
                    }
                }
            }
            i++
        }
        return out
    }

    private fun parseExtInf(line: String): ExtInf {
        // #EXTINF:-1 tvg-id="x" tvg-name="y" tvg-logo="z" group-title="g",Display Name
        val afterColon = line.substringAfter(":", "").ifBlank { return ExtInf() }
        val commaIdx = findUnquotedComma(afterColon)
        val attrsPart = if (commaIdx >= 0) afterColon.substring(0, commaIdx) else afterColon
        val title = if (commaIdx >= 0) afterColon.substring(commaIdx + 1).trim() else ""

        val attrs = parseAttributes(attrsPart)
        val name = attrs["tvg-name"]?.takeIf { it.isNotBlank() } ?: title
        return ExtInf(
            name = name,
            tvgId = attrs["tvg-id"].orEmpty(),
            logo = attrs["tvg-logo"].orEmpty(),
            groupTitle = attrs["group-title"].orEmpty()
        )
    }

    private fun findUnquotedComma(s: String): Int {
        var inQuotes = false
        for (i in s.indices) {
            when (val c = s[i]) {
                '"' -> inQuotes = !inQuotes
                ',' -> if (!inQuotes) return i
                else -> Unit
            }
        }
        return -1
    }

    private fun parseAttributes(s: String): Map<String, String> {
        val map = mutableMapOf<String, String>()
        val regex = Regex("""([a-zA-Z0-9\-]+)\s*=\s*"([^"]*)"""")
        regex.findAll(s).forEach { match ->
            map[match.groupValues[1].lowercase()] = match.groupValues[2]
        }
        return map
    }

    /** Try to derive a stable numeric stream id from the URL itself (Xtream URLs end with `/<id>.ext`). */
    private fun parseStreamIdFromUrl(url: String): Int? {
        val noQuery = url.substringBefore('?')
        val tail = noQuery.substringAfterLast('/')
        val numeric = tail.substringBeforeLast('.').toIntOrNull()
        return numeric?.let { abs(it) }
    }

    private data class ExtInf(
        val name: String = "",
        val tvgId: String = "",
        val logo: String = "",
        val groupTitle: String = ""
    )
}
