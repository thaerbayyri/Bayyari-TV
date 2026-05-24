package com.bayyari.tv.data.repository

import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.local.dao.ChannelDao
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.util.M3uParser
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import okhttp3.ResponseBody.Companion.toResponseBody
import org.junit.Assert.assertEquals
import org.junit.Test
import retrofit2.Response
import java.io.IOException

class LiveRepositoryTest {

    @Test
    fun refresh_returnsZeroWhenM3uFetchFails() = runTest {
        val api = mockk<XtreamApiService>()
        val channelDao = mockk<ChannelDao>(relaxed = true)
        val m3uParser = mockk<M3uParser>()
        val repository = LiveRepository(api, channelDao, m3uParser)
        val server = Server(id = 42, label = "M3U", url = "https://example.com/playlist.m3u", username = "", password = "", isM3uOnly = true)

        every { channelDao.observeAll(any()) } returns flowOf(emptyList())
        every { channelDao.observeByCategory(any(), any()) } returns flowOf(emptyList())
        coEvery { api.fetchRaw(any()) } throws IOException("network down")

        val result = repository.refresh(server)

        assertEquals(0, result)
        coVerify(exactly = 1) { api.fetchRaw("https://example.com/playlist.m3u") }
    }

    @Test
    fun refresh_skipsWriteWhenM3uResponseIsNotSuccessful() = runTest {
        val api = mockk<XtreamApiService>()
        val channelDao = mockk<ChannelDao>(relaxed = true)
        val m3uParser = mockk<M3uParser>(relaxed = true)
        val repository = LiveRepository(api, channelDao, m3uParser)
        val server = Server(id = 7, label = "M3U", url = "https://example.com/playlist.m3u", username = "", password = "", isM3uOnly = true)

        every { channelDao.observeAll(any()) } returns flowOf(emptyList())
        every { channelDao.observeByCategory(any(), any()) } returns flowOf(emptyList())
        coEvery { api.fetchRaw(any()) } returns Response.error(404, "not found".toResponseBody())

        val result = repository.refresh(server)

        assertEquals(0, result)
    }
}
