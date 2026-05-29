package com.bayyari.tv.data.repository

import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.api.models.CategoryDto
import com.bayyari.tv.data.api.models.LiveStreamDto
import com.bayyari.tv.data.local.dao.ChannelDao
import com.bayyari.tv.data.local.entities.ChannelEntity
import com.bayyari.tv.domain.model.Server
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import io.mockk.slot
import kotlinx.coroutines.test.runTest
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.IOException

class LiveRepositoryTest {

    @Test
    fun refresh_returnsZeroWhenLiveStreamsFail() = runTest {
        val api = mockk<XtreamApiService>()
        val channelDao = mockk<ChannelDao>(relaxed = true)
        val repository = LiveRepository(api, channelDao)
        val server = Server(id = 42, label = "Test", url = "https://example.com/", username = "user", password = "pass")

        coEvery { api.getLiveCategories("user", "pass") } returns emptyList()
        coEvery { api.getLiveStreams("user", "pass") } throws IOException("network down")

        val result = repository.refresh(server)

        assertEquals(0, result)
        coVerify(exactly = 0) { channelDao.replaceAllForServer(any(), any()) }
    }

    @Test
    fun refresh_mergesCategoriesAndWritesEntities() = runTest {
        val api = mockk<XtreamApiService>()
        val channelDao = mockk<ChannelDao>(relaxed = true)
        val repository = LiveRepository(api, channelDao)
        val server = Server(id = 7, label = "Test", url = "https://example.com/", username = "user", password = "pass")

        coEvery { api.getLiveCategories("user", "pass") } returns listOf(
            CategoryDto(categoryId = "42", categoryName = "Sports", parentId = null)
        )
        coEvery { api.getLiveStreams("user", "pass") } returns listOf(
            LiveStreamDto(
                num = 1,
                name = "ESPN",
                streamType = "live",
                streamId = 100,
                streamIcon = null,
                epgChannelId = null,
                added = null,
                categoryId = "42",
                customSid = null,
                tvArchive = null,
                directSource = null,
                tvArchiveDuration = null
            )
        )

        val captured = slot<List<ChannelEntity>>()
        coEvery { channelDao.replaceAllForServer(server.id, capture(captured)) } returns Unit

        val result = repository.refresh(server)

        assertEquals(1, result)
        assertEquals(1, captured.captured.size)
        assertEquals("Sports", captured.captured.first().categoryName)
        assertTrue(captured.captured.first().name == "ESPN")
    }

    @Test
    fun refreshIfStale_skipsSecondRefreshWithinThreshold() = runTest {
        val api = mockk<XtreamApiService>()
        val channelDao = mockk<ChannelDao>(relaxed = true)
        val repository = LiveRepository(api, channelDao)
        val server = Server(id = 7, label = "Test", url = "https://example.com/", username = "user", password = "pass")

        coEvery { api.getLiveCategories("user", "pass") } returns emptyList()
        coEvery { api.getLiveStreams("user", "pass") } returns listOf(
            LiveStreamDto(
                num = 1,
                name = "ESPN",
                streamType = "live",
                streamId = 100,
                streamIcon = null,
                epgChannelId = null,
                added = null,
                categoryId = "42",
                customSid = null,
                tvArchive = null,
                directSource = null,
                tvArchiveDuration = null
            )
        )
        coEvery { channelDao.count(server.id) } returns 1

        assertEquals(1, repository.refreshIfStale(server))
        assertEquals(1, repository.refreshIfStale(server))

        coVerify(exactly = 1) { api.getLiveStreams("user", "pass") }
        coVerify(exactly = 1) { channelDao.replaceAllForServer(eq(server.id), any()) }
        coVerify(exactly = 1) { channelDao.count(server.id) }
    }
}
