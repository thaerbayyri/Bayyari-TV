package com.bayyari.tv.data.api

import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.util.EncryptedPrefs
import io.mockk.every
import io.mockk.mockk
import io.mockk.slot
import okhttp3.Interceptor
import okhttp3.Protocol
import okhttp3.Request
import okhttp3.Response
import okhttp3.ResponseBody.Companion.toResponseBody
import org.junit.Assert.assertEquals
import org.junit.Test

class DynamicHostInterceptorTest {

    @Test
    fun intercept_preservesActiveServerBasePath() {
        val prefs = mockk<EncryptedPrefs>()
        every { prefs.getActiveServer() } returns Server(
            id = 1,
            label = "Panel",
            url = "http://provider.test/panel",
            username = "user",
            password = "pass"
        )

        val original = Request.Builder()
            .url("http://placeholder.local/player_api.php?username=user&password=pass")
            .build()
        val captured = slot<Request>()
        val chain = mockk<Interceptor.Chain>()
        every { chain.request() } returns original
        every { chain.proceed(capture(captured)) } answers {
            Response.Builder()
                .request(captured.captured)
                .protocol(Protocol.HTTP_1_1)
                .code(200)
                .message("OK")
                .body("".toResponseBody())
                .build()
        }

        DynamicHostInterceptor(prefs).intercept(chain)

        assertEquals(
            "http://provider.test/panel/player_api.php?username=user&password=pass",
            captured.captured.url.toString()
        )
    }
}
