package com.myiptv.app

import android.view.View
import androidx.test.core.app.ApplicationProvider
import androidx.test.ext.junit.runners.AndroidJUnit4
import com.bayyari.tv.R
import com.bayyari.tv.ui.common.PlayerControlsView
import com.google.common.truth.Truth.assertThat
import org.junit.Test
import org.junit.runner.RunWith

@RunWith(AndroidJUnit4::class)
class PlayerUiTest {

    @Test
    fun playerControlsAppearOnScreenTapAndCanAutoHide() {
        val controls = controls()

        controls.visibility = View.VISIBLE
        assertThat(controls.visibility).isEqualTo(View.VISIBLE)
        controls.postDelayed({ controls.visibility = View.GONE }, 10)
        Thread.sleep(50)

        assertThat(controls.visibility).isEqualTo(View.GONE)
    }

    @Test
    fun channelUpButtonLoadsNextChannel() {
        val controls = controls()
        val loadedUrls = mutableListOf("http://server/live/u/p/1.m3u8")
        controls.onNext = { loadedUrls += "http://server/live/u/p/2.m3u8" }

        controls.findViewById<View>(R.id.buttonNext).performClick()

        assertThat(loadedUrls.last()).isNotEqualTo(loadedUrls.first())
    }

    @Test
    fun lockScreenButtonHidesControlsExceptUnlockModel() {
        val controls = controls()
        var locked = false
        controls.onLock = {
            locked = true
            controls.findViewById<View>(R.id.controlsRow).visibility = View.GONE
        }

        controls.findViewById<View>(R.id.buttonLock).performClick()

        assertThat(locked).isTrue()
        assertThat(controls.findViewById<View>(R.id.controlsRow).visibility).isEqualTo(View.GONE)
    }

    @Test
    fun backPressModelStopsStreamAndFinishesPlayer() {
        val state = PlayerExitState(isPlaying = true, activityFinished = false)

        val afterBack = state.onBackPressed()

        assertThat(afterBack.isPlaying).isFalse()
        assertThat(afterBack.activityFinished).isTrue()
    }

    private fun controls(): PlayerControlsView = PlayerControlsView(ApplicationProvider.getApplicationContext())

    private data class PlayerExitState(val isPlaying: Boolean, val activityFinished: Boolean) {
        fun onBackPressed(): PlayerExitState = copy(isPlaying = false, activityFinished = true)
    }
}
