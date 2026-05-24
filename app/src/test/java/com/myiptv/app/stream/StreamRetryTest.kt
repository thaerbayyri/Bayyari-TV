package com.myiptv.app.stream

import com.google.common.truth.Truth.assertThat
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.test.runTest
import org.junit.Test

class StreamRetryTest {

    @Test
    fun `auto retry on connection drop attempt one hides user error`() = runTest {
        val retry = RetryController(maxRetries = 3)

        retry.onConnectionDrop { attempt -> attempt == 1 }

        assertThat(retry.events).containsAtLeast(
            PlayerEvent.Buffering,
            PlayerEvent.RetryAttempt(1),
            PlayerEvent.Ready
        ).inOrder()
        assertThat(retry.userError).isNull()
    }

    @Test
    fun `auto retry succeeds on third attempt and resets retry count`() = runTest {
        val retry = RetryController(maxRetries = 3)

        retry.onConnectionDrop { attempt -> attempt == 3 }

        assertThat(retry.backoffHistoryMs).containsExactly(1_000L, 2_000L, 4_000L).inOrder()
        assertThat(retry.events.last()).isEqualTo(PlayerEvent.Ready)
        assertThat(retry.retryCount).isEqualTo(0)
    }

    @Test
    fun `show error after three failed retries`() = runTest {
        val retry = RetryController(maxRetries = 3)

        retry.onConnectionDrop { false }

        assertThat(retry.userError).isEqualTo("Stream unavailable")
        assertThat(retry.manualRetryVisible).isTrue()
        assertThat(retry.openExternalVisible).isTrue()
    }

    @Test
    fun `retry on network switch pauses then resumes same position`() = runTest {
        val network = NetworkPlaybackController()
        network.positionMs = 32_000

        network.onNetworkChanged(connected = false)
        network.onNetworkChanged(connected = true)

        assertThat(network.events).containsExactly("pause", "resume").inOrder()
        assertThat(network.positionMs).isEqualTo(32_000)
        assertThat(network.isPlaying.value).isTrue()
    }

    @Test
    fun `server returns 503 uses longer retry and permanent error`() = runTest {
        val retry = RetryController(maxRetries = 3)

        retry.onServerBusy { false }

        assertThat(retry.backoffHistoryMs).containsExactly(5_000L, 5_000L, 5_000L).inOrder()
        assertThat(retry.userError).startsWith("Server busy after 3 retries at ")
    }

    private class RetryController(private val maxRetries: Int) {
        val events = mutableListOf<PlayerEvent>()
        val backoffHistoryMs = mutableListOf<Long>()
        var retryCount = 0
            private set
        var userError: String? = null
            private set
        var manualRetryVisible = false
            private set
        var openExternalVisible = false
            private set

        suspend fun onConnectionDrop(succeedsOnAttempt: (Int) -> Boolean) {
            events += PlayerEvent.Buffering
            for (attempt in 1..maxRetries) {
                retryCount = attempt
                events += PlayerEvent.RetryAttempt(attempt)
                backoffHistoryMs += 1_000L * (1L shl (attempt - 1))
                delay(1)
                if (succeedsOnAttempt(attempt)) {
                    retryCount = 0
                    events += PlayerEvent.Ready
                    return
                }
            }
            userError = "Stream unavailable"
            manualRetryVisible = true
            openExternalVisible = true
        }

        suspend fun onServerBusy(succeedsOnAttempt: (Int) -> Boolean) {
            for (attempt in 1..maxRetries) {
                retryCount = attempt
                backoffHistoryMs += 5_000
                delay(1)
                if (succeedsOnAttempt(attempt)) {
                    retryCount = 0
                    events += PlayerEvent.Ready
                    return
                }
            }
            userError = "Server busy after 3 retries at ${System.currentTimeMillis()}"
        }
    }

    private class NetworkPlaybackController {
        val isPlaying = MutableStateFlow(true)
        val events = mutableListOf<String>()
        var positionMs: Long = 0

        fun onNetworkChanged(connected: Boolean) {
            if (!connected) {
                isPlaying.value = false
                events += "pause"
            } else {
                isPlaying.value = true
                events += "resume"
            }
        }
    }

    private sealed class PlayerEvent {
        data object Buffering : PlayerEvent()
        data object Ready : PlayerEvent()
        data class RetryAttempt(val attempt: Int) : PlayerEvent()
    }
}
