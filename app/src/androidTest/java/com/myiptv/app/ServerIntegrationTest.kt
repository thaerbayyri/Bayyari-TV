package com.myiptv.app

import androidx.test.ext.junit.runners.AndroidJUnit4
import androidx.test.filters.LargeTest
import com.google.common.truth.Truth.assertThat
import okhttp3.OkHttpClient
import okhttp3.Request
import org.junit.Assume.assumeTrue
import org.junit.Test
import org.junit.runner.RunWith
import java.util.concurrent.TimeUnit

@LargeTest
@RunWith(AndroidJUnit4::class)
class ServerIntegrationTest {

    @Test
    fun realServerConnectionAndAuthenticationEndpointResponds() {
        assumeTrue(AndroidTestServerConfig.isRealServerAvailable)
        val client = OkHttpClient.Builder()
            .connectTimeout(8, TimeUnit.SECONDS)
            .readTimeout(8, TimeUnit.SECONDS)
            .build()
        val url = "${AndroidTestServerConfig.serverUrl.trimEnd('/')}/player_api.php" +
            "?username=${AndroidTestServerConfig.username}&password=${AndroidTestServerConfig.password}"

        client.newCall(Request.Builder().url(url).get().build()).execute().use { response ->
            assertThat(response.code).isIn(listOf(200, 401, 403))
            val body = response.body?.string().orEmpty()
            assertThat(body).contains("user_info")
        }
    }
}
