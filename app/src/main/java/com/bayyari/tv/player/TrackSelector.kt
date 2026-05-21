package com.bayyari.tv.player

import androidx.media3.common.C
import androidx.media3.common.TrackGroup
import androidx.media3.exoplayer.trackselection.DefaultTrackSelector

object TrackSelector {

    data class TrackInfo(
        val groupIndex: Int,
        val trackIndex: Int,
        val label: String
    )

    fun audioTracks(selector: DefaultTrackSelector): List<TrackInfo> =
        extractTracks(selector, C.TRACK_TYPE_AUDIO)

    fun subtitleTracks(selector: DefaultTrackSelector): List<TrackInfo> =
        extractTracks(selector, C.TRACK_TYPE_TEXT)

    fun applyAudioTrack(selector: DefaultTrackSelector, groupIndex: Int, trackIndex: Int) {
        applySelection(selector, C.TRACK_TYPE_AUDIO, groupIndex, trackIndex)
    }

    fun applySubtitleTrack(selector: DefaultTrackSelector, groupIndex: Int, trackIndex: Int) {
        applySelection(selector, C.TRACK_TYPE_TEXT, groupIndex, trackIndex)
    }

    private fun extractTracks(selector: DefaultTrackSelector, trackType: Int): List<TrackInfo> {
        val mapped = selector.currentMappedTrackInfo ?: return emptyList()
        val rendererIndex = (0 until mapped.rendererCount)
            .firstOrNull { mapped.getRendererType(it) == trackType } ?: return emptyList()
        val groups = mapped.getTrackGroups(rendererIndex)
        val out = mutableListOf<TrackInfo>()
        for (groupIndex in 0 until groups.length) {
            val group: TrackGroup = groups[groupIndex]
            for (trackIndex in 0 until group.length) {
                val format = group.getFormat(trackIndex)
                val label = format.label ?: format.language ?: "Track ${trackIndex + 1}"
                out += TrackInfo(groupIndex, trackIndex, label)
            }
        }
        return out
    }

    private fun applySelection(
        selector: DefaultTrackSelector,
        trackType: Int,
        groupIndex: Int,
        trackIndex: Int
    ) {
        val mapped = selector.currentMappedTrackInfo ?: return
        val rendererIndex = (0 until mapped.rendererCount)
            .firstOrNull { mapped.getRendererType(it) == trackType } ?: return
        val builder = selector.buildUponParameters()
        builder.clearOverridesOfType(trackType)
        val groups = mapped.getTrackGroups(rendererIndex)
        if (groupIndex < groups.length) {
            builder.setSelectionOverride(
                rendererIndex,
                groups,
                DefaultTrackSelector.SelectionOverride(groupIndex, trackIndex)
            )
        }
        selector.setParameters(builder)
    }
}
