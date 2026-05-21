package com.bayyari.tv.domain.model

data class EpgProgram(
    val streamId: Int,
    val title: String,
    val description: String,
    val startMs: Long,
    val endMs: Long,
    val hasArchive: Boolean
) {
    val durationMs: Long get() = (endMs - startMs).coerceAtLeast(0)
}
