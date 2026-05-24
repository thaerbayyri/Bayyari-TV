package com.bayyari.tv.data.repository

import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.local.dao.ChannelDao
import com.bayyari.tv.data.local.dao.MovieDao
import com.bayyari.tv.data.local.dao.SeriesDao
import com.bayyari.tv.data.local.entities.ChannelEntity
import com.bayyari.tv.data.local.entities.MovieEntity
import com.bayyari.tv.data.local.entities.SeriesEntity
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.util.Constants
import com.bayyari.tv.util.M3uParser
import com.google.gson.Gson
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.runTest
import okhttp3.OkHttpClient
import okhttp3.ResponseBody.Companion.toResponseBody
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test
import retrofit2.Response
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

/**
 * Verifies that the full catalog (channels, movies, series) is downloaded without truncation
 * and written to the database in the correct number of chunks.
 *
 * Each test uses a real MockWebServer + Retrofit pipeline so the JSON parsing path is exercised,
 * and a MockK DAO so we can assert exactly what was persisted.
 */
class FullCatalogDownloadTest {

    private lateinit var mockWebServer: MockWebServer
    private lateinit var api: XtreamApiService
    private val gson = Gson()

    private val xtreamServer = Server(
        id = 1,
        label = "Spider",
        url = "http://placeholder/",   // rewritten by MockWebServer base URL
        username = "user",
        password = "pass",
        isM3uOnly = false
    )

    private val m3uServer = Server(
        id = 2,
        label = "M3U",
        url = "http://placeholder/playlist.m3u",
        username = "",
        password = "",
        isM3uOnly = true
    )

    @Before
    fun setUp() {
        mockWebServer = MockWebServer()
        mockWebServer.start()
        val retrofit = Retrofit.Builder()
            .baseUrl(mockWebServer.url("/"))
            .client(OkHttpClient())
            .addConverterFactory(GsonConverterFactory.create(gson))
            .build()
        api = retrofit.create(XtreamApiService::class.java)
    }

    @After
    fun tearDown() = mockWebServer.shutdown()

    // ─── helpers ──────────────────────────────────────────────────────────────

    /** Returns a JSON array of N minimal live-stream objects. */
    private fun liveStreamsJson(n: Int): String = buildString {
        append('[')
        repeat(n) { i ->
            if (i > 0) append(',')
            append("""{"stream_id":${i + 1},"name":"Ch${i + 1}","category_id":"1"}""")
        }
        append(']')
    }

    /** Returns a JSON array of N minimal VOD-stream objects. */
    private fun vodStreamsJson(n: Int): String = buildString {
        append('[')
        repeat(n) { i ->
            if (i > 0) append(',')
            append("""{"stream_id":${i + 1},"name":"Movie${i + 1}","category_id":"2","added":"${System.currentTimeMillis() / 1000}"}""")
        }
        append(']')
    }

    /** Returns a JSON array of N minimal series objects. */
    private fun seriesJson(n: Int): String = buildString {
        append('[')
        repeat(n) { i ->
            if (i > 0) append(',')
            append("""{"series_id":${i + 1},"name":"Series${i + 1}","category_id":"3"}""")
        }
        append(']')
    }

    private fun categoriesJson() =
        """[{"category_id":"1","category_name":"General","parent_id":null}]"""

    // ─── LiveRepository tests ─────────────────────────────────────────────────

    @Test
    fun `channels - all 12552 items stored without truncation`() = runTest {
        val channelCount = 12_552
        // categories then streams
        mockWebServer.enqueue(MockResponse().setBody(categoriesJson()).setResponseCode(200))
        mockWebServer.enqueue(MockResponse().setBody(liveStreamsJson(channelCount)).setResponseCode(200))

        val channelDao = mockk<ChannelDao>(relaxed = true)
        every { channelDao.observeAll(any()) } returns flowOf(emptyList())
        every { channelDao.observeByCategory(any(), any()) } returns flowOf(emptyList())

        val allInserted = mutableListOf<ChannelEntity>()
        coEvery { channelDao.upsertAll(any()) } coAnswers {
            allInserted.addAll(firstArg<List<ChannelEntity>>())
        }

        val repo = LiveRepository(api, channelDao, M3uParser())
        val result = repo.refresh(xtreamServer)

        assertEquals(channelCount, result)
        assertEquals(channelCount, allInserted.size)
        // verify no duplicates
        val ids = allInserted.map { it.streamId }
        assertEquals(channelCount, ids.distinct().size)
    }

    @Test
    fun `channels - large response is chunked into multiple upsertAll calls`() = runTest {
        val channelCount = 1_200   // 3 chunks: 500 + 500 + 200
        mockWebServer.enqueue(MockResponse().setBody(categoriesJson()).setResponseCode(200))
        mockWebServer.enqueue(MockResponse().setBody(liveStreamsJson(channelCount)).setResponseCode(200))

        val channelDao = mockk<ChannelDao>(relaxed = true)
        every { channelDao.observeAll(any()) } returns flowOf(emptyList())

        val callCount = mutableListOf<Int>()
        coEvery { channelDao.upsertAll(any()) } coAnswers {
            callCount.add(firstArg<List<ChannelEntity>>().size)
        }

        val repo = LiveRepository(api, channelDao, M3uParser())
        repo.refresh(xtreamServer)

        val expectedChunks = (channelCount + Constants.DB_UPSERT_CHUNK_SIZE - 1) / Constants.DB_UPSERT_CHUNK_SIZE
        assertEquals("Expected $expectedChunks upsertAll calls for $channelCount channels", expectedChunks, callCount.size)
        assertEquals(channelCount, callCount.sum())
        // each chunk except possibly the last must be exactly CHUNK_SIZE
        callCount.dropLast(1).forEach { size ->
            assertEquals(Constants.DB_UPSERT_CHUNK_SIZE, size)
        }
    }

    @Test
    fun `channels - category names are merged into each entity`() = runTest {
        mockWebServer.enqueue(
            MockResponse().setBody(
                """[{"category_id":"42","category_name":"Sports","parent_id":null}]"""
            ).setResponseCode(200)
        )
        mockWebServer.enqueue(
            MockResponse().setBody(
                """[{"stream_id":1,"name":"ESPN","category_id":"42"}]"""
            ).setResponseCode(200)
        )

        val channelDao = mockk<ChannelDao>(relaxed = true)
        every { channelDao.observeAll(any()) } returns flowOf(emptyList())
        var savedEntity: ChannelEntity? = null
        coEvery { channelDao.upsertAll(any()) } coAnswers {
            savedEntity = firstArg<List<ChannelEntity>>().firstOrNull()
        }

        LiveRepository(api, channelDao, M3uParser()).refresh(xtreamServer)

        assertEquals("ESPN", savedEntity?.name)
        assertEquals("Sports", savedEntity?.categoryName)
        assertEquals("42", savedEntity?.categoryId)
    }

    @Test
    fun `channels - M3U playlist downloads and stores all channels`() = runTest {
        val m3uBody = buildString {
            appendLine("#EXTM3U")
            repeat(50) { i ->
                appendLine("""#EXTINF:-1 tvg-id="ch$i" group-title="Group${i % 5}",Channel $i""")
                appendLine("http://stream.example.com/$i.ts")
            }
        }
        mockWebServer.enqueue(MockResponse().setBody(m3uBody).setResponseCode(200))

        val channelDao = mockk<ChannelDao>(relaxed = true)
        every { channelDao.observeAll(any()) } returns flowOf(emptyList())
        val allInserted = mutableListOf<ChannelEntity>()
        coEvery { channelDao.upsertAll(any()) } coAnswers {
            allInserted.addAll(firstArg<List<ChannelEntity>>())
        }

        val server = m3uServer.copy(url = mockWebServer.url("/playlist.m3u").toString())
        val result = LiveRepository(api, channelDao, M3uParser()).refresh(server)

        assertEquals(50, result)
        assertEquals(50, allInserted.size)
        assertTrue(allInserted.all { it.serverId == server.id })
    }

    @Test
    fun `channels - clearForServer called before upsert so stale data is removed`() = runTest {
        mockWebServer.enqueue(MockResponse().setBody(categoriesJson()).setResponseCode(200))
        mockWebServer.enqueue(MockResponse().setBody(liveStreamsJson(3)).setResponseCode(200))

        val channelDao = mockk<ChannelDao>(relaxed = true)
        every { channelDao.observeAll(any()) } returns flowOf(emptyList())

        val callOrder = mutableListOf<String>()
        coEvery { channelDao.clearForServer(any()) } coAnswers { callOrder.add("clear") }
        coEvery { channelDao.upsertAll(any()) } coAnswers { callOrder.add("upsert") }

        LiveRepository(api, channelDao, M3uParser()).refresh(xtreamServer)

        assertEquals("clear", callOrder.first())
        assertTrue(callOrder.contains("upsert"))
    }

    // ─── MovieRepository tests ────────────────────────────────────────────────

    @Test
    fun `movies - all 21000 items stored without truncation`() = runTest {
        val movieCount = 21_000
        mockWebServer.enqueue(MockResponse().setBody(vodStreamsJson(movieCount)).setResponseCode(200))

        val movieDao = mockk<MovieDao>(relaxed = true)
        val allInserted = mutableListOf<MovieEntity>()
        coEvery { movieDao.upsertAll(any()) } coAnswers {
            allInserted.addAll(firstArg<List<MovieEntity>>())
        }

        val repo = MovieRepository(api, movieDao)
        val result = repo.refresh(xtreamServer)

        assertEquals(movieCount, result)
        assertEquals(movieCount, allInserted.size)
        assertEquals(movieCount, allInserted.map { it.streamId }.distinct().size)
    }

    @Test
    fun `movies - large response is chunked into multiple upsertAll calls`() = runTest {
        val movieCount = 1_100   // 3 chunks: 500 + 500 + 100
        mockWebServer.enqueue(MockResponse().setBody(vodStreamsJson(movieCount)).setResponseCode(200))

        val movieDao = mockk<MovieDao>(relaxed = true)
        val callSizes = mutableListOf<Int>()
        coEvery { movieDao.upsertAll(any()) } coAnswers {
            callSizes.add(firstArg<List<MovieEntity>>().size)
        }

        MovieRepository(api, movieDao).refresh(xtreamServer)

        val expectedChunks = (movieCount + Constants.DB_UPSERT_CHUNK_SIZE - 1) / Constants.DB_UPSERT_CHUNK_SIZE
        assertEquals(expectedChunks, callSizes.size)
        assertEquals(movieCount, callSizes.sum())
    }

    @Test
    fun `movies - skipped for M3U-only servers`() = runTest {
        val movieDao = mockk<MovieDao>(relaxed = true)
        val result = MovieRepository(api, movieDao).refresh(m3uServer)

        assertEquals(0, result)
        coVerify(exactly = 0) { movieDao.upsertAll(any()) }
    }

    @Test
    fun `movies - returns zero on API failure without crashing`() = runTest {
        mockWebServer.enqueue(MockResponse().setResponseCode(500))

        val movieDao = mockk<MovieDao>(relaxed = true)
        val result = MovieRepository(api, movieDao).refresh(xtreamServer)

        assertEquals(0, result)
        coVerify(exactly = 0) { movieDao.upsertAll(any()) }
    }

    @Test
    fun `movies - clearForServer called before upsert`() = runTest {
        mockWebServer.enqueue(MockResponse().setBody(vodStreamsJson(2)).setResponseCode(200))

        val movieDao = mockk<MovieDao>(relaxed = true)
        val callOrder = mutableListOf<String>()
        coEvery { movieDao.clearForServer(any()) } coAnswers { callOrder.add("clear") }
        coEvery { movieDao.upsertAll(any()) } coAnswers { callOrder.add("upsert") }

        MovieRepository(api, movieDao).refresh(xtreamServer)

        assertEquals("clear", callOrder.first())
    }

    // ─── SeriesRepository tests ───────────────────────────────────────────────

    @Test
    fun `series - all 7300 items stored without truncation`() = runTest {
        val seriesCount = 7_300
        mockWebServer.enqueue(MockResponse().setBody(seriesJson(seriesCount)).setResponseCode(200))

        val seriesDao = mockk<SeriesDao>(relaxed = true)
        val allInserted = mutableListOf<SeriesEntity>()
        coEvery { seriesDao.upsertAll(any()) } coAnswers {
            allInserted.addAll(firstArg<List<SeriesEntity>>())
        }

        val result = SeriesRepository(api, seriesDao).refresh(xtreamServer)

        assertEquals(seriesCount, result)
        assertEquals(seriesCount, allInserted.size)
        assertEquals(seriesCount, allInserted.map { it.seriesId }.distinct().size)
    }

    @Test
    fun `series - large response is chunked into multiple upsertAll calls`() = runTest {
        val seriesCount = 800   // 2 chunks: 500 + 300
        mockWebServer.enqueue(MockResponse().setBody(seriesJson(seriesCount)).setResponseCode(200))

        val seriesDao = mockk<SeriesDao>(relaxed = true)
        val callSizes = mutableListOf<Int>()
        coEvery { seriesDao.upsertAll(any()) } coAnswers {
            callSizes.add(firstArg<List<SeriesEntity>>().size)
        }

        SeriesRepository(api, seriesDao).refresh(xtreamServer)

        val expectedChunks = (seriesCount + Constants.DB_UPSERT_CHUNK_SIZE - 1) / Constants.DB_UPSERT_CHUNK_SIZE
        assertEquals(expectedChunks, callSizes.size)
        assertEquals(seriesCount, callSizes.sum())
    }

    @Test
    fun `series - skipped for M3U-only servers`() = runTest {
        val seriesDao = mockk<SeriesDao>(relaxed = true)
        val result = SeriesRepository(api, seriesDao).refresh(m3uServer)

        assertEquals(0, result)
        coVerify(exactly = 0) { seriesDao.upsertAll(any()) }
    }

    @Test
    fun `series - returns zero on API failure without crashing`() = runTest {
        mockWebServer.enqueue(MockResponse().setResponseCode(503))

        val seriesDao = mockk<SeriesDao>(relaxed = true)
        val result = SeriesRepository(api, seriesDao).refresh(xtreamServer)

        assertEquals(0, result)
        coVerify(exactly = 0) { seriesDao.upsertAll(any()) }
    }

    // ─── Combined count test ──────────────────────────────────────────────────

    @Test
    fun `combined - full Spider catalog size verified across all three types`() = runTest {
        // Simulate the actual Spider server sizes from the requirements
        val channels = 12_552
        val movies  = 21_000
        val series  =  7_300

        // Live
        val channelDao = mockk<ChannelDao>(relaxed = true)
        every { channelDao.observeAll(any()) } returns flowOf(emptyList())
        val savedChannels = mutableListOf<ChannelEntity>()
        coEvery { channelDao.upsertAll(any()) } coAnswers { savedChannels.addAll(firstArg()) }
        mockWebServer.enqueue(MockResponse().setBody(categoriesJson()).setResponseCode(200))
        mockWebServer.enqueue(MockResponse().setBody(liveStreamsJson(channels)).setResponseCode(200))
        val liveResult = LiveRepository(api, channelDao, M3uParser()).refresh(xtreamServer)

        // Movies
        val movieDao = mockk<MovieDao>(relaxed = true)
        val savedMovies = mutableListOf<MovieEntity>()
        coEvery { movieDao.upsertAll(any()) } coAnswers { savedMovies.addAll(firstArg()) }
        mockWebServer.enqueue(MockResponse().setBody(vodStreamsJson(movies)).setResponseCode(200))
        val movieResult = MovieRepository(api, movieDao).refresh(xtreamServer)

        // Series
        val seriesDao = mockk<SeriesDao>(relaxed = true)
        val savedSeries = mutableListOf<SeriesEntity>()
        coEvery { seriesDao.upsertAll(any()) } coAnswers { savedSeries.addAll(firstArg()) }
        mockWebServer.enqueue(MockResponse().setBody(seriesJson(series)).setResponseCode(200))
        val seriesResult = SeriesRepository(api, seriesDao).refresh(xtreamServer)

        assertEquals("All $channels channels stored", channels, liveResult)
        assertEquals("All $movies movies stored",  movies,  movieResult)
        assertEquals("All $series series stored",  series,  seriesResult)
        assertEquals(channels, savedChannels.size)
        assertEquals(movies,   savedMovies.size)
        assertEquals(series,   savedSeries.size)
    }
}
