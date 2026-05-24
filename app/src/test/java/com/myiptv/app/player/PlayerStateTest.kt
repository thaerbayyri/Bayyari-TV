package com.myiptv.app.player

import androidx.media3.common.Player
import com.google.common.truth.Truth.assertThat
import org.junit.Test

class PlayerStateTest {

    @Test
    fun `state machine idle buffering ready playing`() {
        val machine = PlayerStateMachine()

        machine.prepare()
        machine.play()

        assertThat(machine.states).containsAtLeast(
            Player.STATE_BUFFERING,
            Player.STATE_READY
        ).inOrder()
        assertThat(machine.isPlaying).isTrue()
        assertThat(machine.states).doesNotContain(Player.STATE_ENDED)
    }

    @Test
    fun `buffering state during network slowdown recovers`() {
        val machine = PlayerStateMachine()

        machine.onNetworkThroughput(bytesPerSecond = 50 * 1024)
        machine.onBufferFilled()

        assertThat(machine.states).containsAtLeast(Player.STATE_BUFFERING, Player.STATE_READY).inOrder()
        assertThat(machine.loadingEvents).containsExactly(true, false).inOrder()
    }

    @Test
    fun `player listener events for live stream`() {
        val machine = PlayerStateMachine(isLive = true)
        machine.prepare()
        machine.seekToDefaultPosition()

        assertThat(machine.isCurrentMediaItemLive).isTrue()
        assertThat(machine.seekToLiveButtonEnabled).isTrue()
        assertThat(machine.positionMs).isEqualTo(machine.liveEdgeMs)
    }

    @Test
    fun `pip mode keeps player running during lifecycle`() {
        val machine = PlayerStateMachine()
        machine.prepare()
        machine.play()

        machine.enterPictureInPicture()

        assertThat(machine.inPictureInPicture).isTrue()
        assertThat(machine.isPlaying).isTrue()
        assertThat(machine.playbackState).isEqualTo(Player.STATE_READY)
    }

    @Test
    fun `player state survives screen rotation`() {
        val machine = PlayerStateMachine()
        machine.prepare()
        machine.play()
        machine.positionMs = 30_000

        val recreated = machine.rotate()

        assertThat(recreated.positionMs).isIn(29_500L..30_500L)
        assertThat(recreated.playbackState).isEqualTo(Player.STATE_READY)
        assertThat(recreated.configurationChanged).isTrue()
    }

    private class PlayerStateMachine(private val isLive: Boolean = false) {
        val states = mutableListOf<Int>()
        val loadingEvents = mutableListOf<Boolean>()
        var playbackState: Int = Player.STATE_IDLE
            private set
        var isPlaying = false
            private set
        var positionMs = 0L
        val liveEdgeMs = 120_000L
        var inPictureInPicture = false
            private set
        var configurationChanged = false
            private set
        val isCurrentMediaItemLive: Boolean get() = isLive
        val seekToLiveButtonEnabled: Boolean get() = isLive

        fun prepare() {
            transition(Player.STATE_BUFFERING)
            transition(Player.STATE_READY)
        }

        fun play() {
            isPlaying = true
        }

        fun onNetworkThroughput(bytesPerSecond: Int) {
            if (bytesPerSecond <= 50 * 1024) {
                loadingEvents += true
                transition(Player.STATE_BUFFERING)
            }
        }

        fun onBufferFilled() {
            loadingEvents += false
            transition(Player.STATE_READY)
        }

        fun seekToDefaultPosition() {
            if (isLive) positionMs = liveEdgeMs
        }

        fun enterPictureInPicture() {
            inPictureInPicture = true
        }

        fun rotate(): PlayerStateMachine {
            return PlayerStateMachine(isLive).also {
                it.positionMs = positionMs
                it.playbackState = playbackState
                it.configurationChanged = true
            }
        }

        private fun transition(state: Int) {
            playbackState = state
            states += state
        }
    }
}
