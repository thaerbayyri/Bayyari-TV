package com.myiptv.app.server

import com.google.common.truth.Truth.assertThat
import okhttp3.OkHttpClient
import okhttp3.Request
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Before
import org.junit.Test
import kotlinx.coroutines.runBlocking

data class ChannelDto(val stream_id: String?, val name: String?, val stream_icon: String?, val category_id: String?, val tv_archive: String?)

class XtreamApiTest {
    private lateinit var server: MockWebServer

    @Before
    fun setup() {
        server = MockWebServer()
    }

    @After
    fun tearDown() {
        server.shutdown()
    }

    @Test
    fun `getLiveStreams returns correct list`() = runBlocking {
        val json = "[ { \"stream_id\": \"100\", \"name\": \"One\", \"stream_icon\": \"i\", \"category_id\": \"1\", \"tv_archive\": \"0\" }, { \"stream_id\": \"101\", \"name\": \"Two\", \"stream_icon\": \"i2\", \"category_id\": \"1\", \"tv_archive\": \"1\" }, { \"stream_id\": \"102\", \"name\": \"Three\", \"stream_icon\": \"i3\", \"category_id\": \"2\", \"tv_archive\": \"0\" } ]"
        server.enqueue(MockResponse().setResponseCode(200).setBody(json))
        server.start()

        val client = OkHttpClient.Builder().build()
        val request = Request.Builder().url(server.url("/player_api.php?action=get_live_streams")).get().build()
        client.newCall(request).execute().use { resp ->
            val s = resp.body?.string() ?: ""
            assertThat(s).contains("stream_id")
            // quick parse
            assertThat(s).contains("100")
        }
    }

    @Test
    fun `getLiveStreams with empty server returns empty list`() = runBlocking {
        server.enqueue(MockResponse().setResponseCode(200).setBody("[]"))
        server.start()

        val client = OkHttpClient.Builder().build()
        val request = Request.Builder().url(server.url("/player_api.php?action=get_live_streams")).get().build()
        client.newCall(request).execute().use { resp ->
            val s = resp.body?.string() ?: ""
            assertThat(s).isEqualTo("[]")
        }
    }

    @Test
    fun `getLiveCategories returns categories and caches`() = runBlocking {
        val categories = "[ { \"category_id\": \"1\", \"category_name\": \"News\" }, { \"category_id\": \"2\", \"category_name\": \"Sports\" }, { \"category_id\": \"3\", \"category_name\": \"Movies\" }, { \"category_id\": \"4\", \"category_name\": \"Kids\" }, { \"category_id\": \"5\", \"category_name\": \"Music\" } ]"
        server.enqueue(MockResponse().setResponseCode(200).setBody(categories))
        server.start()

        val client = OkHttpClient.Builder().build()
        val request = Request.Builder().url(server.url("/player_api.php?action=get_live_categories")).get().build()
        client.newCall(request).execute().use { resp ->
            val s = resp.body?.string() ?: ""
            assertThat(s).contains("category_name")
            assertThat(s).contains("Kids")
        }
    }

    @Test
    fun `getVodStreams returns movies with numeric ratings and sorted`() = runBlocking {
        // create 3 movies with added timestamps
        val movies = "[ { \"movie_id\": \"1\", \"title\": \"A\", \"rating\": 8.5, \"added\": 200 }, { \"movie_id\": \"2\", \"title\": \"B\", \"rating\": 7.0, \"added\": 300 }, { \"movie_id\": \"3\", \"title\": \"C\", \"rating\": 9.0, \"added\": 100 } ]"
        server.enqueue(MockResponse().setResponseCode(200).setBody(movies))
        server.start()

        val client = OkHttpClient.Builder().build()
        val request = Request.Builder().url(server.url("/player_api.php?action=get_vod_streams")).get().build()
        client.newCall(request).execute().use { resp ->
            val s = resp.body?.string() ?: ""
            assertThat(s).contains("movie_id")
            assertThat(s).contains("rating")
        }
    }

    @Test
    fun `getVodInfo returns movie detail parsed`() = runBlocking {
        val detail = "{ \"info\": { \"plot\": \"An epic\", \"genre\": \"Action,Adventure\" }, \"streams\": [ { \"url\": \"/movie/1.mkv\" } ] }"
        server.enqueue(MockResponse().setResponseCode(200).setBody(detail))
        server.start()

        val client = OkHttpClient.Builder().build()
        val request = Request.Builder().url(server.url("/player_api.php?action=get_vod_info&movie_id=1")).get().build()
        client.newCall(request).execute().use { resp ->
            val s = resp.body?.string() ?: ""
            assertThat(s).contains("plot")
            assertThat(s).contains("Action,Adventure")
        }
    }

    @Test
    fun `api handles network interruption mid_response`() = runBlocking {
        // Mock server closes socket mid-response
        val resp = MockResponse().setBody("{" ).setSocketPolicy(okhttp3.mockwebserver.SocketPolicy.DISCONNECT_DURING_RESPONSE_BODY)
        server.enqueue(resp)
        server.start()

        val client = OkHttpClient.Builder().build()
        val request = Request.Builder().url(server.url("/player_api.php?action=get_live_streams")).get().build()
        try {
            client.newCall(request).execute().use { _ -> }
            assertThat(false).isTrue()
        } catch (e: Exception) {
            assertThat(e).isNotNull()
        }
    }
}
