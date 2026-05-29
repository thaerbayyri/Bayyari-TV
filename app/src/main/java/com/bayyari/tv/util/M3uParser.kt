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
 * `#EXTM3U` header attributes supported:
 *  - url-tvg       → returned in [ParseResult.epgUrl]
 *
 * Lines beginning with `#` other than `#EXTINF` are treated as headers/comments and skipped.
 */
@Singleton
class M3uParser @Inject constructor() {

    data class ParseResult(val channels: List<Channel>, val epgUrl: String?)

    fun parse(content: String, serverId: Int = 0): List<Channel> =
        parseFull(content, serverId).channels

    fun parseFull(content: String, serverId: Int = 0): ParseResult {
        val lines = content.lineSequence().map { it.trim() }.filter { it.isNotEmpty() }.iterator()
        if (!lines.hasNext()) return ParseResult(emptyList(), null)

        val firstLine = lines.next()
        val hasHeader = firstLine.startsWith("#EXTM3U")
        val epgUrl = if (hasHeader) {
            parseAttributes(firstLine.substringAfter("#EXTM3U").trim())["url-tvg"]
                ?.takeIf { it.isNotBlank() }
        } else {
            null
        }

        val out = mutableListOf<Channel>()
        var current: ExtInf? = null
        var fallbackId = -1

        val parseLine: (String) -> Unit = { line ->
            when {
                line.startsWith("#EXTINF") -> current = parseExtInf(line)
                line.startsWith("#") -> Unit
                else -> {
                    val info = current
                    if (info != null) {
                        val streamId = parseStreamIdFromUrl(line) ?: (fallbackId--).also { }
                        out += Channel(
                            streamId = streamId,
                            name = info.name,
                            streamIcon = info.logo,
                            categoryId = info.groupTitle,
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
        }
        if (!hasHeader) parseLine(firstLine)
        while (lines.hasNext()) {
            parseLine(lines.next())
        }
        return ParseResult(out, epgUrl)
    }

    private fun parseExtInf(line: String): ExtInf? {
        val afterColon = line.substringAfter(":", "").ifBlank { return null }
        val commaIdx = findUnquotedComma(afterColon)
        if (commaIdx < 0) return null
        val attrsPart = if (commaIdx >= 0) afterColon.substring(0, commaIdx) else afterColon
        val title = if (commaIdx >= 0) afterColon.substring(commaIdx + 1).trim() else ""

        val attrs = parseAttributes(attrsPart)
        val name = attrs["tvg-name"]?.takeIf { it.isNotBlank() } ?: title
        if (name.isBlank()) return null
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
            when (s[i]) {
                '"' -> inQuotes = !inQuotes
                ',' -> if (!inQuotes) return i
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
