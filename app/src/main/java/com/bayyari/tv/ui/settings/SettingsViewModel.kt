package com.bayyari.tv.ui.settings

import androidx.lifecycle.ViewModel
import com.bayyari.tv.data.local.dao.ChannelDao
import com.bayyari.tv.data.local.dao.EpgDao
import com.bayyari.tv.data.local.dao.MovieDao
import com.bayyari.tv.data.local.dao.SeriesDao
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.WatchHistoryRepository
import com.bayyari.tv.util.EncryptedPrefs
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject

@HiltViewModel
class SettingsViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val prefs: EncryptedPrefs,
    private val channelDao: ChannelDao,
    private val movieDao: MovieDao,
    private val seriesDao: SeriesDao,
    private val epgDao: EpgDao,
    private val watchHistoryRepository: WatchHistoryRepository
) : ViewModel() {

    fun getServerInfo(): String {
        val server = authRepository.getActiveServer() ?: return ""
        val expiry = if (server.expiresAtEpochSeconds > 0) server.expiresAtEpochSeconds.toString() else "-"
        return "Expiry: $expiry, Max: ${server.maxConnections}"
    }

    fun setDefaultPlayer(value: String) = prefs.setDefaultPlayer(value)
    fun setStreamFormat(value: String) = prefs.setStreamFormat(value)
    fun setBufferSizeMs(value: Int) = prefs.setBufferSizeMs(value)
    fun setAutoPlayNext(enabled: Boolean) = prefs.setAutoPlayNext(enabled)
    fun setParentalPin(pin: String) = prefs.setParentalPin(pin)
    fun clearHiddenLiveCategories() = prefs.clearHiddenLiveCategories()

    /**
     * Wipe the active server's id so MainActivity routes back to LoginActivity on the next
     * launch. We deliberately do not call `prefs.clearAll()` — that would also nuke saved
     * server configs the user may want to keep, which is the wrong behavior for "change playlist".
     */
    fun signOut() {
        prefs.setActiveServerId(0)
    }

    suspend fun clearCache() = withContext(Dispatchers.IO) {
        val serverId = authRepository.getActiveServer()?.id ?: return@withContext
        channelDao.clearForServer(serverId)
        movieDao.clearForServer(serverId)
        seriesDao.clearForServer(serverId)
        epgDao.clearForServer(serverId)
        watchHistoryRepository.clear(serverId)
    }
}
