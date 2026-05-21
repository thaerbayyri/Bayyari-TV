package com.bayyari.tv.ui.live

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.EpgRepository
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.EpgProgram
import com.bayyari.tv.util.EncryptedPrefs
import com.bayyari.tv.util.StreamUrlBuilder
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class LivePlayerViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val liveRepository: LiveRepository,
    private val epgRepository: EpgRepository,
    private val streamUrlBuilder: StreamUrlBuilder,
    private val prefs: EncryptedPrefs
) : ViewModel() {

    private val _channel = MutableStateFlow<Channel?>(null)
    val channel: StateFlow<Channel?> = _channel

    private val _epg = MutableStateFlow<List<EpgProgram>>(emptyList())
    val epg: StateFlow<List<EpgProgram>> = _epg

    fun load(streamId: Int) {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            _channel.value = liveRepository.getChannel(server.id, streamId)
            _epg.value = epgRepository.refresh(server, streamId)
        }
    }

    fun buildStreamUrl(channel: Channel): String {
        if (!channel.directStreamUrl.isNullOrBlank()) return channel.directStreamUrl
        val server = authRepository.getActiveServer() ?: return ""
        val format = prefs.getStreamFormat()
        val liveFormat = if (format == "ts") StreamUrlBuilder.LiveFormat.TS else StreamUrlBuilder.LiveFormat.HLS
        return streamUrlBuilder.live(server.normalizedUrl, server.username, server.password, channel.streamId, liveFormat)
    }
}
