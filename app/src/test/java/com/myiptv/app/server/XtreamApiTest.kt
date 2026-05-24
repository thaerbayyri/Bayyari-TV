package com.myiptv.app.server

import androidx.room.Room
import androidx.test.core.app.ApplicationProvider
import com.bayyari.tv.data.api.XtreamApiService
import com.bayyari.tv.data.local.AppDatabase
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.data.repository.SeriesRepository
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.util.M3uParser
import com.google.common.truth.Truth.assertThat
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.first
import kotlinx.coroutines.test.runTest
import okhttp3.mockwebserver.MockResponse
import okhttp3.mockwebserver.MockWebServer
import okhttp3.mockwebserver.SocketPolicy
import org.junit.After
import org.junit.Before
import org.junit.Test
import org.junit.runner.RunWith
import org.robolectric.RobolectricTestRunner
import retrofit2.HttpException
import retrofit2.Retrofit
import retrofit2.converter.gson.GsonConverterFactory
import java.io.IOException
import java.time.Instant
import java.time.ZoneOffset

@RunWith(RobolectricTestRunner::class)
class XtreamApiTest {
    private lateinit var server: MockWebServer
    private lateinit var api: XtreamApiService
    private lateinit var db: AppDatabase
    private val testServer = Server(
        id = 42,
        label = "Test",
        url = "http://example.test",
        username = "user",
        password = "pass"
    )

    @Before
    fun setUp() {
        server = MockWebServer()
        server.start()
        api = Retrofit.Builder()
            .baseUrl(server.url("/"))
            .addConverterFactory(GsonConverterFactory.create())
            .build()
            .create(XtreamApiService::class.java)
        db = Room.inMemoryDatabaseBuilder(
            ApplicationProvider.getApplicationContext(),
            AppDatabase::class.java
        ).build()
    }

    @After
    fun tearDown() {
        db.close()
        server.shutdown()
    }

    @Test
    fun `getLiveStreams returns correct list`() = runTest {
        server.enqueue(MockResponse().setBody(LIVE_STREAMS_JSON))

        val result = api.getLiveStreams("user", "pass")

        assertThat(result).hasSize(3)
        assertThat(result[0].streamId).isEqualTo(101)
        assertThat(result[0].name).isEqualTo("News HD")
        assertThat(result[0].streamIcon).isEqualTo("http://img/news.png")
        assertThat(result[0].categoryId).isEqualTo("1")
        assertThat(result[0].tvArchive).isEqualTo(1)
    }

    @Test
    fun `getLiveStreams with empty server returns empty list state`() = runTest {
        server.enqueue(MockResponse().setBody("[]"))

        val result = api.getLiveStreams("user", "pass")

        assertThat(result).isEmpty()
        assertThat(result.toUiState()).isEqualTo(ApiUiState.Empty)
    }

    @Test
    fun `getLiveCategories returns categories and repository caches category names with channels`() = runTest {
        server.enqueue(MockResponse().setBody(CATEGORIES_JSON))
        server.enqueue(MockResponse().setBody(LIVE_STREAMS_JSON))
        val repository = LiveRepository(api, db.channelDao(), M3uParser())

        val inserted = repository.refresh(testServer)
        val channels = repository.observeChannels(testServer.id, null).first()

        assertThat(inserted).isEqualTo(3)
        assertThat(channels.map { it.categoryName }).containsAtLeast("News", "Sports")
    }

    @Test
    fun `getVodStreams returns movies with numeric ratings and sorted by added descending`() = runTest {
        server.enqueue(MockResponse().setBody(MOVIES_JSON))
        val repository = MovieRepository(api, db.movieDao())

        repository.refresh(testServer)
        val movies = repository.observeMovies(testServer.id, null).first().sortedByDescending { it.addedEpochSeconds }

        assertThat(movies).hasSize(10)
        assertThat(movies.first().streamId).isEqualTo(10)
        assertThat(movies.first().rating).isWithin(0.001).of(8.7)
        assertThat(movies.zipWithNext().all { (left, right) -> left.addedEpochSeconds >= right.addedEpochSeconds }).isTrue()
    }

    @Test
    fun `getVodInfo returns movie detail parsed`() = runTest {
        server.enqueue(MockResponse().setBody(MOVIE_DETAIL_JSON))

        val detail = api.getVodInfo("user", "pass", 10)

        assertThat(detail.info?.plot).isEqualTo("A test plot")
        assertThat(detail.info?.genre?.split(",")?.map { it.trim() }).containsExactly("Drama", "Action")
        assertThat(detail.movieData?.containerExtension).isEqualTo("mkv")
    }

    @Test
    fun `getSeries returns series list with populated defaults`() = runTest {
        server.enqueue(MockResponse().setBody(SERIES_JSON))
        val repository = SeriesRepository(api, db.seriesDao())

        repository.refresh(testServer)
        val series = repository.observeSeries(testServer.id, null).first()

        assertThat(series).hasSize(2)
        assertThat(series[0].seriesId).isEqualTo(501)
        assertThat(series[0].name).isEqualTo("Test Series")
        assertThat(series[0].cover).isNotEmpty()
        assertThat(series[1].rating.ifBlank { "N/A" }).isEqualTo("N/A")
    }

    @Test
    fun `getSeriesInfo returns seasons and episodes`() = runTest {
        server.enqueue(MockResponse().setBody(SERIES_INFO_JSON))

        val info = api.getSeriesInfo("user", "pass", 501)

        assertThat(info.seasons).hasSize(2)
        assertThat(info.episodes?.get("1")).hasSize(5)
        val episode = info.episodes?.get("1")?.first()
        assertThat(episode?.id).isEqualTo("9001")
        assertThat(episode?.title).isEqualTo("S1E1")
        assertThat(episode?.containerExtension).isEqualTo("mp4")
    }

    @Test
    fun `getShortEpg returns program list with date times`() = runTest {
        server.enqueue(MockResponse().setBody(EPG_JSON))

        val epg = api.getShortEpg("user", "pass", 101)
        val listings = epg.listings.orEmpty()
        val firstStart = Instant.ofEpochSecond(listings[0].startTimestamp!!.toLong()).atZone(ZoneOffset.UTC).toLocalDateTime()

        assertThat(listings).hasSize(3)
        assertThat(listings[0].title).isNotEmpty()
        assertThat(listings[0].start).isEqualTo("2024-01-01 10:00:00")
        assertThat(listings[0].end).isEqualTo("2024-01-01 11:00:00")
        assertThat(firstStart.hour).isEqualTo(10)
    }

    @Test
    fun `api call with network interruption mid response maps to retryable error`() = runTest {
        server.enqueue(
            MockResponse()
                .setBody("[{\"stream_id\":1,\"name\":\"Broken\"}")
                .setSocketPolicy(SocketPolicy.DISCONNECT_DURING_RESPONSE_BODY)
        )

        val state = runCatching { api.getLiveStreams("user", "pass") }.fold(
            onSuccess = { ApiUiState.Success },
            onFailure = { ApiUiState.Error(retry = it is IOException) }
        )

        assertThat(state).isEqualTo(ApiUiState.Error(retry = true))
    }

    @Test
    fun `api rate limiting waits then retries once`() = runTest {
        server.enqueue(MockResponse().setResponseCode(429).setBody("""{"message":"too many"}"""))
        server.enqueue(MockResponse().setBody(LIVE_STREAMS_JSON))

        val result = retryOnceAfterRateLimit { api.getLiveStreams("user", "pass") }

        assertThat(result).hasSize(3)
        assertThat(server.requestCount).isEqualTo(2)
    }

    private suspend fun <T> retryOnceAfterRateLimit(block: suspend () -> T): T {
        return try {
            block()
        } catch (error: HttpException) {
            if (error.code() != 429) throw error
            delay(2_000)
            block()
        }
    }

    private fun <T> List<T>.toUiState(): ApiUiState = if (isEmpty()) ApiUiState.Empty else ApiUiState.Success

    private sealed class ApiUiState {
        data object Empty : ApiUiState()
        data object Success : ApiUiState()
        data class Error(val retry: Boolean) : ApiUiState()
    }

    private companion object {
        private const val CATEGORIES_JSON = """
            [
              {"category_id":"1","category_name":"News","parent_id":0},
              {"category_id":"2","category_name":"Sports","parent_id":0},
              {"category_id":"3","category_name":"Movies","parent_id":0},
              {"category_id":"4","category_name":"Kids","parent_id":0},
              {"category_id":"5","category_name":"Arabic","parent_id":0}
            ]
        """

        private const val LIVE_STREAMS_JSON = """
            [
              {"num":1,"name":"News HD","stream_type":"live","stream_id":101,"stream_icon":"http://img/news.png","epg_channel_id":"news","added":"1700000000","category_id":"1","tv_archive":1,"tv_archive_duration":48},
              {"num":2,"name":"Sports HD","stream_type":"live","stream_id":102,"stream_icon":"http://img/sports.png","epg_channel_id":"sports","added":"1700000001","category_id":"2","tv_archive":0,"tv_archive_duration":0},
              {"num":3,"name":"Kids HD","stream_type":"live","stream_id":103,"stream_icon":"http://img/kids.png","epg_channel_id":"kids","added":"1700000002","category_id":"4","tv_archive":0,"tv_archive_duration":0}
            ]
        """

        private val MOVIES_JSON = (1..10).joinToString(prefix = "[", postfix = "]") { index ->
            val added = 1700000000L + index
            """{"num":$index,"name":"Movie $index","stream_type":"movie","stream_id":$index,"stream_icon":"http://img/$index.jpg","rating":"${7.7 + index / 10.0}","rating_5based":${3.5 + index / 10.0},"added":"$added","category_id":"3","container_extension":"mkv"}"""
        }

        private const val MOVIE_DETAIL_JSON = """
            {
              "info": {
                "movie_image": "http://img/movie.jpg",
                "genre": "Drama, Action",
                "plot": "A test plot",
                "rating": "8.5",
                "duration_secs": 7200
              },
              "movie_data": {
                "stream_id": 10,
                "name": "Movie 10",
                "container_extension": "mkv"
              }
            }
        """

        private const val SERIES_JSON = """
            [
              {"num":1,"name":"Test Series","series_id":501,"cover":"http://img/series.jpg","plot":"Plot","genre":"Drama","releaseDate":"2024","rating":"8.1","category_id":"5"},
              {"num":2,"name":"No Rating","series_id":502,"cover":"http://img/series2.jpg","plot":"Plot","genre":"Comedy","releaseDate":"2024","rating":null,"category_id":"5"}
            ]
        """

        private val SERIES_INFO_JSON = """
            {
              "seasons": [
                {"air_date":"2024-01-01","episode_count":5,"id":1,"name":"Season 1","season_number":1},
                {"air_date":"2024-02-01","episode_count":5,"id":2,"name":"Season 2","season_number":2}
              ],
              "info": {"name":"Test Series","cover":"http://img/series.jpg","genre":"Drama","rating":"8.1"},
              "episodes": {
                "1": ${episodesJson(1)},
                "2": ${episodesJson(2)}
              }
            }
        """

        private const val EPG_JSON = """
            {
              "epg_listings": [
                {"id":"1","title":"TmV3cw==","start":"2024-01-01 10:00:00","end":"2024-01-01 11:00:00","description":"RGVzYw==","start_timestamp":"1704103200","stop_timestamp":"1704106800","has_archive":1},
                {"id":"2","title":"U3BvcnRz","start":"2024-01-01 11:00:00","end":"2024-01-01 12:00:00","description":"RGVzYw==","start_timestamp":"1704106800","stop_timestamp":"1704110400","has_archive":0},
                {"id":"3","title":"S2lkcw==","start":"2024-01-01 12:00:00","end":"2024-01-01 13:00:00","description":"RGVzYw==","start_timestamp":"1704110400","stop_timestamp":"1704114000","has_archive":0}
              ]
            }
        """

        private fun episodesJson(season: Int): String = (1..5).joinToString(prefix = "[", postfix = "]") { episode ->
            val id = 9000 + ((season - 1) * 5) + episode
            """{"id":"$id","episode_num":$episode,"title":"S${season}E$episode","container_extension":"mp4","season":$season}"""
        }
    }
}
