package com.bayyari.tv.player

import android.content.Intent
import android.view.WindowManager
import androidx.test.core.app.ActivityScenario
import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.filters.LargeTest
import com.bayyari.tv.ui.live.LivePlayerActivity
import com.google.common.truth.Truth.assertThat
import org.junit.Test
import org.junit.runner.RunWith

@LargeTest
@RunWith(AndroidJUnit4::class)
class LivePlayerDirectStreamTest {

    @Test
    fun directLiveStreamLaunchesLandscapeAndKeepsScreenOn() {
        val context = androidx.test.core.app.ApplicationProvider
            .getApplicationContext<android.content.Context>()
        val intent = Intent(context, LivePlayerActivity::class.java).apply {
            putExtra(
                LivePlayerActivity.EXTRA_STREAM_URL,
                "https://test-streams.mux.dev/x36xhzz/x36xhzz.m3u8"
            )
            putExtra(LivePlayerActivity.EXTRA_CHANNEL_NAME, "Test Channel")
            addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
        }

        ActivityScenario.launch<LivePlayerActivity>(intent).use { scenario ->
            scenario.onActivity { activity ->
                assertThat(activity.window.attributes.flags and WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
                    .isNotEqualTo(0)
                assertThat(activity.requestedOrientation)
                    .isEqualTo(android.content.pm.ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE)
            }
        }
    }
}
