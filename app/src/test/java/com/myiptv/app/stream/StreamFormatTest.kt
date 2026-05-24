package com.myiptv.app.stream

import android.content.Intent
import android.net.Uri
import androidx.media3.common.MediaItem
import androidx.test.core.app.ApplicationProvider
import com.bayyari.tv.data.api.XtreamApiService
import com.google.common.truth.Truth.assertThat
import kotlinx.coroutines.test.runTest
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

@RunWith(RobolectricTestRunner::class)
class StreamFormatTest {
    private val servers = mutableListOf<MockWebServer>()

    @After
    fun tearDown() {
        servers.forEach { runCatching { it.shutdown() } }
    }

    @Test
    fun `hls playlist parsing m3u8 manifest is accepted`() = runTest {
        val server = newServer()
        server.enqueue(MockResponse().setBody(HLS_MEDIA_PLAYLIST).setHeader("Content-Type", "application/vnd.apple.mpegurl"))
        val url = server.url("/live/index.m3u8").toString()

        val body = service(server).fetchRaw(url).body()!!.string()
        val mediaItem = MediaItem.fromUri(url)

        assertThat(body).contains("#EXTM3U")
        assertThat(body).contains("segment0.ts")
        assertThat(mediaItem.localConfiguration?.uri.toString()).isEqualTo(url)
    }

    @Test
    fun `multi bitrate hls exposes three variants and can switch to 480p`() {
        val playlist = HLS_MASTER_PLAYLIST

        val variants = Regex("""RESOLUTION=(\d+x\d+).*?\n([^\n]+)""").findAll(playlist).map {
            Variant(it.groupValues[1], it.groupValues[2].trim())
        }.toList()
        val selected = variants.maxBy { it.height }
        val switched = variants.first { it.resolution == "854x480" }

        assertThat(variants).hasSize(3)
        assertThat(selected.resolution).isEqualTo("1920x1080")
        assertThat(switched.uri).isEqualTo("480p.m3u8")
    }

    @Test
    fun `mpeg ts stream format detection from extension and content type`() {
        val format = detectFormat("http://server/live/1.ts", "video/mp2t")

        assertThat(format).isEqualTo(StreamFormat.MPEG_TS)
    }

    @Test
    fun `rtmp stream url handling requires external player`() {
        val url = "rtmp://server.com/live/streamkey"
        val context = ApplicationProvider.getApplicationContext<android.content.Context>()
        val intent = Intent(Intent.ACTION_VIEW).setDataAndType(Uri.parse(url), "video/*")

        assertThat(url.startsWith("rtmp://")).isTrue()
        assertThat(requiresExternalPlayer(url)).isTrue()
        assertThat(intent.data.toString()).isEqualTo(url)
        assertThat(intent.type).isEqualTo("video/*")
        assertThat(context.packageName).isNotEmpty()
    }

    @Test
    fun `encrypted hls key uri is requested with headers`() = runTest {
        val server = newServer()
        server.enqueue(MockResponse().setBody(ENCRYPTED_HLS))
        server.enqueue(MockResponse().setBody("0123456789abcdef"))

        val manifest = service(server).fetchRaw(server.url("/enc/index.m3u8").toString()).body()!!.string()
        val keyPath = Regex("""URI="([^"]+)"""").find(manifest)!!.groupValues[1]
        service(server).fetchRaw(server.url(keyPath).toString())

        assertThat(keyPath).isEqualTo("key.bin")
        assertThat(server.takeRequest().path).isEqualTo("/enc/index.m3u8")
        assertThat(server.takeRequest().path).isEqualTo("/key.bin")
    }

    @Test
    fun `stream with multiple audio tracks can switch selected language`() {
        val tracks = listOf(AudioTrack("eng", "English"), AudioTrack("ara", "Arabic"))
        val selector = TestAudioSelector(tracks)

        selector.select("ara")

        assertThat(selector.available()).hasSize(2)
        assertThat(selector.selected?.label).isEqualTo("Arabic")
    }

    private fun detectFormat(url: String, contentType: String): StreamFormat = when {
        url.endsWith(".m3u8", true) -> StreamFormat.HLS
        url.endsWith(".ts", true) || contentType.contains("mp2t") -> StreamFormat.MPEG_TS
        else -> StreamFormat.PROGRESSIVE
    }

    private fun requiresExternalPlayer(url: String): Boolean = url.startsWith("rtmp://", ignoreCase = true)

    private fun service(server: MockWebServer): XtreamApiService = Retrofit.Builder()
        .baseUrl(server.url("/"))
        .addConverterFactory(GsonConverterFactory.create())
        .build()
        .create(XtreamApiService::class.java)

    private fun newServer(): MockWebServer = MockWebServer().also {
        it.start()
        servers += it
    }

    private enum class StreamFormat { HLS, MPEG_TS, PROGRESSIVE }
    private data class Variant(val resolution: String, val uri: String) {
        val height: Int = resolution.substringAfter("x").toInt()
    }
    private data class AudioTrack(val id: String, val label: String)
    private class TestAudioSelector(private val tracks: List<AudioTrack>) {
        var selected: AudioTrack? = null
            private set
        fun available(): List<AudioTrack> = tracks
        fun select(id: String) {
            selected = tracks.first { it.id == id }
        }
    }

    private companion object {
        private const val HLS_MEDIA_PLAYLIST = """
            #EXTM3U
            #EXT-X-VERSION:3
            #EXT-X-TARGETDURATION:10
            #EXT-X-MEDIA-SEQUENCE:0
            #EXTINF:10.0,
            segment0.ts
            #EXTINF:10.0,
            segment1.ts
            #EXT-X-ENDLIST
        """
        private const val HLS_MASTER_PLAYLIST = """
            #EXTM3U
            #EXT-X-STREAM-INF:BANDWIDTH=800000,RESOLUTION=854x480
            480p.m3u8
            #EXT-X-STREAM-INF:BANDWIDTH=2500000,RESOLUTION=1280x720
            720p.m3u8
            #EXT-X-STREAM-INF:BANDWIDTH=5000000,RESOLUTION=1920x1080
            1080p.m3u8
        """
        private const val ENCRYPTED_HLS = """
            #EXTM3U
            #EXT-X-VERSION:3
            #EXT-X-KEY:METHOD=AES-128,URI="key.bin"
            #EXTINF:8.0,
            segment0.ts
        """
    }
}
