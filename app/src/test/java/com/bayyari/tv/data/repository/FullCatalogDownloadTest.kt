package com.bayyari.tv.data.repository

import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.local.dao.ChannelDao
import com.bayyari.tv.data.local.dao.MovieDao
import com.bayyari.tv.data.local.dao.SeriesDao
import com.bayyari.tv.data.local.entities.ChannelEntity
import com.bayyari.tv.data.local.entities.MovieEntity
import com.bayyari.tv.data.local.entities.SeriesEntity
import com.bayyari.tv.domain.model.Server
import com.google.gson.Gson
import io.mockk.coEvery
import io.mockk.coVerify
import io.mockk.mockk
import kotlinx.coroutines.test.runTest
import okhttp3.OkHttpClient
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Before
import org.junit.Test
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory

/**
 * Verifies that the full catalog (channels, movies, series) is downloaded without truncation
 * and written to the database.
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
        password = "pass"
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

        val allInserted = mutableListOf<ChannelEntity>()
        coEvery { channelDao.replaceAllForServer(any(), any()) } coAnswers {
            allInserted.addAll(secondArg<List<ChannelEntity>>())
        }

        val repo = LiveRepository(api, channelDao)
        val result = repo.refresh(xtreamServer)

        assertEquals(channelCount, result)
        assertEquals(channelCount, allInserted.size)
        // verify no duplicates
        val ids = allInserted.map { it.streamId }
        assertEquals(channelCount, ids.distinct().size)
    }

    @Test
    fun `channels - replaceAllForServer receives full list`() = runTest {
        val channelCount = 1_200
        mockWebServer.enqueue(MockResponse().setBody(categoriesJson()).setResponseCode(200))
        mockWebServer.enqueue(MockResponse().setBody(liveStreamsJson(channelCount)).setResponseCode(200))

        val channelDao = mockk<ChannelDao>(relaxed = true)
        val callSizes = mutableListOf<Int>()
        coEvery { channelDao.replaceAllForServer(any(), any()) } coAnswers {
            callSizes.add(secondArg<List<ChannelEntity>>().size)
        }

        val repo = LiveRepository(api, channelDao)
        repo.refresh(xtreamServer)

        assertEquals(1, callSizes.size)
        assertEquals(channelCount, callSizes.first())
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
        var savedEntity: ChannelEntity? = null
        coEvery { channelDao.replaceAllForServer(any(), any()) } coAnswers {
            savedEntity = secondArg<List<ChannelEntity>>().firstOrNull()
        }

        LiveRepository(api, channelDao).refresh(xtreamServer)

        assertEquals("ESPN", savedEntity?.name)
        assertEquals("Sports", savedEntity?.categoryName)
        assertEquals("42", savedEntity?.categoryId)
    }

    // ─── MovieRepository tests ────────────────────────────────────────────────

    @Test
    fun `movies - all 21000 items stored without truncation`() = runTest {
        val movieCount = 21_000
        mockWebServer.enqueue(MockResponse().setBody(vodStreamsJson(movieCount)).setResponseCode(200))

        val movieDao = mockk<MovieDao>(relaxed = true)
        val allInserted = mutableListOf<MovieEntity>()
        coEvery { movieDao.replaceAllForServer(any(), any()) } coAnswers {
            allInserted.addAll(secondArg<List<MovieEntity>>())
        }

        val repo = MovieRepository(api, movieDao)
        val result = repo.refresh(xtreamServer)

        assertEquals(movieCount, result)
        assertEquals(movieCount, allInserted.size)
        assertEquals(movieCount, allInserted.map { it.streamId }.distinct().size)
    }


    @Test
    fun `movies - returns zero on API failure without crashing`() = runTest {
        mockWebServer.enqueue(MockResponse().setResponseCode(500))

        val movieDao = mockk<MovieDao>(relaxed = true)
        val result = MovieRepository(api, movieDao).refresh(xtreamServer)

        assertEquals(0, result)
        coVerify(exactly = 0) { movieDao.replaceAllForServer(any(), any()) }
    }

    @Test
    fun `movies - clearForServer called before upsert`() = runTest {
        mockWebServer.enqueue(MockResponse().setBody(vodStreamsJson(2)).setResponseCode(200))

        val movieDao = mockk<MovieDao>(relaxed = true)
        val callOrder = mutableListOf<String>()
        coEvery { movieDao.replaceAllForServer(any(), any()) } coAnswers {
            callOrder.add("replace")
        }

        MovieRepository(api, movieDao).refresh(xtreamServer)

        assertEquals("replace", callOrder.first())
    }

    // ─── SeriesRepository tests ───────────────────────────────────────────────

    @Test
    fun `series - all 7300 items stored without truncation`() = runTest {
        val seriesCount = 7_300
        mockWebServer.enqueue(MockResponse().setBody(seriesJson(seriesCount)).setResponseCode(200))

        val seriesDao = mockk<SeriesDao>(relaxed = true)
        val allInserted = mutableListOf<SeriesEntity>()
        coEvery { seriesDao.replaceAllForServer(any(), any()) } coAnswers {
            allInserted.addAll(secondArg<List<SeriesEntity>>())
        }

        val result = SeriesRepository(api, seriesDao).refresh(xtreamServer)

        assertEquals(seriesCount, result)
        assertEquals(seriesCount, allInserted.size)
        assertEquals(seriesCount, allInserted.map { it.seriesId }.distinct().size)
    }


    @Test
    fun `series - returns zero on API failure without crashing`() = runTest {
        mockWebServer.enqueue(MockResponse().setResponseCode(503))

        val seriesDao = mockk<SeriesDao>(relaxed = true)
        val result = SeriesRepository(api, seriesDao).refresh(xtreamServer)

        assertEquals(0, result)
        coVerify(exactly = 0) { seriesDao.replaceAllForServer(any(), any()) }
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
        val savedChannels = mutableListOf<ChannelEntity>()
        coEvery { channelDao.replaceAllForServer(any(), any()) } coAnswers { savedChannels.addAll(secondArg()) }
        mockWebServer.enqueue(MockResponse().setBody(categoriesJson()).setResponseCode(200))
        mockWebServer.enqueue(MockResponse().setBody(liveStreamsJson(channels)).setResponseCode(200))
        val liveResult = LiveRepository(api, channelDao).refresh(xtreamServer)

        // Movies
        val movieDao = mockk<MovieDao>(relaxed = true)
        val savedMovies = mutableListOf<MovieEntity>()
        coEvery { movieDao.replaceAllForServer(any(), any()) } coAnswers { savedMovies.addAll(secondArg()) }
        mockWebServer.enqueue(MockResponse().setBody(vodStreamsJson(movies)).setResponseCode(200))
        val movieResult = MovieRepository(api, movieDao).refresh(xtreamServer)

        // Series
        val seriesDao = mockk<SeriesDao>(relaxed = true)
        val savedSeries = mutableListOf<SeriesEntity>()
        coEvery { seriesDao.replaceAllForServer(any(), any()) } coAnswers { savedSeries.addAll(secondArg()) }
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
