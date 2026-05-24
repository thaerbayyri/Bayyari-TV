package com.bayyari.tv.util

import android.net.Uri
import com.bayyari.tv.domain.model.SubtitleTrack
import com.google.gson.JsonElement
import com.google.gson.JsonObject

object SubtitleTrackExtractor {

    fun fromElements(vararg elements: JsonElement?): List<SubtitleTrack> =
        elements.flatMap { parseElement(it, null) }
            .distinctBy { it.url }
            .filter { it.url.startsWith("http://", ignoreCase = true) || it.url.startsWith("https://", ignoreCase = true) }

    private fun parseElement(element: JsonElement?, inheritedLabel: String?): List<SubtitleTrack> {
        if (element == null || element.isJsonNull) return emptyList()
        return when {
            element.isJsonPrimitive -> {
                val value = element.asStringOrNull()?.trim().orEmpty()
                if (value.isSubtitleUrl()) listOf(track(value, inheritedLabel)) else emptyList()
            }
            element.isJsonArray -> element.asJsonArray.flatMap { parseElement(it, inheritedLabel) }
            element.isJsonObject -> parseObject(element.asJsonObject, inheritedLabel)
            else -> emptyList()
        }
    }

    private fun parseObject(obj: JsonObject, inheritedLabel: String?): List<SubtitleTrack> {
        val directUrl = firstString(
            obj,
            "url",
            "file",
            "link",
            "download",
            "download_link",
            "subtitle",
            "subtitle_url",
            "src"
        )
        val label = firstString(obj, "label", "name", "language", "lang", "title")
            ?: inheritedLabel
        if (directUrl?.isSubtitleUrl() == true) return listOf(track(directUrl, label))

        return obj.entrySet().flatMap { (key, value) ->
            parseElement(value, key.takeIf { it.isNotBlank() })
        }
    }

    private fun track(url: String, label: String?): SubtitleTrack {
        val cleanUrl = url.trim()
        val language = normalizeLanguage(label.orEmpty())
        val display = label?.takeIf { it.isNotBlank() }
            ?: language.takeIf { it.isNotBlank() }
            ?: cleanUrl.substringAfterLast('/').substringBefore('?').ifBlank { "Subtitle" }
        return SubtitleTrack(display, cleanUrl, language)
    }

    fun mimeTypeFor(url: String): String =
        when (url.substringBefore('?').substringAfterLast('.', "").lowercase()) {
            "vtt", "webvtt" -> androidx.media3.common.MimeTypes.TEXT_VTT
            "ttml", "dfxp", "xml" -> androidx.media3.common.MimeTypes.APPLICATION_TTML
            "ssa", "ass" -> androidx.media3.common.MimeTypes.TEXT_SSA
            else -> androidx.media3.common.MimeTypes.APPLICATION_SUBRIP
        }

    private fun firstString(obj: JsonObject, vararg names: String): String? =
        names.firstNotNullOfOrNull { name ->
            obj.get(name)?.asStringOrNull()?.trim()?.takeIf { it.isNotBlank() }
        }

    private fun JsonElement.asStringOrNull(): String? =
        runCatching { if (isJsonPrimitive) asString else null }.getOrNull()

    private fun String.isSubtitleUrl(): Boolean {
        val lower = substringBefore('?').lowercase()
        return (lower.startsWith("http://") || lower.startsWith("https://")) &&
            (lower.endsWith(".srt") ||
                lower.endsWith(".vtt") ||
                lower.endsWith(".webvtt") ||
                lower.endsWith(".ttml") ||
                lower.endsWith(".dfxp") ||
                lower.endsWith(".ssa") ||
                lower.endsWith(".ass"))
    }

    private fun normalizeLanguage(label: String): String {
        val lowered = label.trim().lowercase()
        return when {
            lowered in setOf("arabic", "ara", "ar", "العربية", "عربي") -> "ar"
            lowered in setOf("english", "eng", "en") -> "en"
            lowered in setOf("french", "fra", "fre", "fr") -> "fr"
            lowered in setOf("spanish", "spa", "es") -> "es"
            lowered in setOf("turkish", "tur", "tr") -> "tr"
            lowered.length in 2..3 -> lowered
            else -> ""
        }
    }
}
