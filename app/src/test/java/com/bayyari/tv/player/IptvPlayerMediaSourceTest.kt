package com.bayyari.tv.player

import com.google.common.truth.Truth.assertThat
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import org.robolectric.annotation.Config

@RunWith(RobolectricTestRunner::class)
@Config(sdk = [29])
class IptvPlayerMediaSourceTest {

    @Test
    fun prepare_setsMediaItem_forHls() {
        val ctx = androidx.test.core.app.ApplicationProvider.getApplicationContext<android.content.Context>()
        val loadControl = androidx.media3.exoplayer.DefaultLoadControl.Builder().build()
        val iptv = IptvPlayer(ctx, loadControl)
        iptv.prepare("http://example.com/stream/1.m3u8", playWhenReady = false)
        val player = iptv.getPlayer()
        val current = player.currentMediaItem
        assertThat(current).isNotNull()
        assertThat(current?.localConfiguration?.uri.toString()).contains("1.m3u8")
        iptv.release()
    }
}
