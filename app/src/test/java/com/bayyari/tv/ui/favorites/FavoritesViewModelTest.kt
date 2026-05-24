package com.bayyari.tv.ui.favorites

import app.cash.turbine.test
import com.bayyari.tv.data.local.dao.FavoriteDao
import com.bayyari.tv.data.local.entities.FavoriteEntity
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.data.repository.SeriesRepository
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.domain.model.Movie
import com.bayyari.tv.domain.model.Series
import com.bayyari.tv.domain.model.Server
import io.mockk.coVerify
import io.mockk.every
import io.mockk.mockk
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.ExperimentalCoroutinesApi
import kotlinx.coroutines.flow.flowOf
import kotlinx.coroutines.test.UnconfinedTestDispatcher
import kotlinx.coroutines.test.resetMain
import kotlinx.coroutines.test.runTest
import kotlinx.coroutines.test.setMain
import org.junit.After
import org.junit.Assert.assertEquals
import org.junit.Assert.assertTrue
import org.junit.Before
import org.junit.Test

@OptIn(ExperimentalCoroutinesApi::class)
class FavoritesViewModelTest {

    private val testDispatcher = UnconfinedTestDispatcher()

    private val server = Server(
        id = 1, label = "Test", url = "http://test.example.com/",
        username = "user", password = "pass", isM3uOnly = false
    )

    private val authRepository = mockk<AuthRepository>(relaxed = true)
    private val favoriteDao = mockk<FavoriteDao>(relaxed = true)
    private val liveRepository = mockk<LiveRepository>(relaxed = true)
    private val movieRepository = mockk<MovieRepository>(relaxed = true)
    private val seriesRepository = mockk<SeriesRepository>(relaxed = true)

    @Before
    fun setUp() {
        Dispatchers.setMain(testDispatcher)
        every { authRepository.activeServerFlow() } returns flowOf(server)
        every { authRepository.getActiveServer() } returns server
        every { favoriteDao.observeAll(server.id) } returns flowOf(emptyList())
        every { liveRepository.observeChannels(server.id, null) } returns flowOf(emptyList())
        every { movieRepository.observeMovies(server.id, null) } returns flowOf(emptyList())
        every { seriesRepository.observeSeries(server.id, null) } returns flowOf(emptyList())
    }

    @After
    fun tearDown() {
        Dispatchers.resetMain()
    }

    @Test
    fun `live channel favorite appears with correct title and type`() = runTest {
        val channel = channel(streamId = 42, name = "ESPN")
        val favorite = FavoriteEntity(id = 1, contentId = 42, contentType = "live", serverId = 1, addedAt = 1000L)

        every { favoriteDao.observeAll(server.id) } returns flowOf(listOf(favorite))
        every { liveRepository.observeChannels(server.id, null) } returns flowOf(listOf(channel))

        createViewModel().favorites.test {
            val items = awaitItem()
            assertEquals(1, items.size)
            assertEquals("ESPN", items[0].title)
            assertEquals("Live", items[0].type)
            assertEquals(1, items[0].id)
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `movie favorite appears with correct title and type`() = runTest {
        val movie = movie(streamId = 99, name = "Inception")
        val favorite = FavoriteEntity(id = 2, contentId = 99, contentType = "movie", serverId = 1, addedAt = 2000L)

        every { favoriteDao.observeAll(server.id) } returns flowOf(listOf(favorite))
        every { movieRepository.observeMovies(server.id, null) } returns flowOf(listOf(movie))

        createViewModel().favorites.test {
            val items = awaitItem()
            assertEquals(1, items.size)
            assertEquals("Inception", items[0].title)
            assertEquals("Movie", items[0].type)
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `series favorite appears with correct title and type`() = runTest {
        val series = series(seriesId = 77, name = "Breaking Bad")
        val favorite = FavoriteEntity(id = 3, contentId = 77, contentType = "series", serverId = 1, addedAt = 3000L)

        every { favoriteDao.observeAll(server.id) } returns flowOf(listOf(favorite))
        every { seriesRepository.observeSeries(server.id, null) } returns flowOf(listOf(series))

        createViewModel().favorites.test {
            val items = awaitItem()
            assertEquals(1, items.size)
            assertEquals("Breaking Bad", items[0].title)
            assertEquals("Series", items[0].type)
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `favorite with no matching content is silently filtered out`() = runTest {
        val orphan = FavoriteEntity(id = 4, contentId = 999, contentType = "live", serverId = 1, addedAt = 4000L)
        every { favoriteDao.observeAll(server.id) } returns flowOf(listOf(orphan))

        createViewModel().favorites.test {
            assertTrue(awaitItem().isEmpty())
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `all three content types resolved in one emission`() = runTest {
        val ch = channel(streamId = 1, name = "News 24")
        val mo = movie(streamId = 2, name = "Matrix")
        val se = series(seriesId = 3, name = "Sopranos")
        val favs = listOf(
            FavoriteEntity(id = 10, contentId = 1, contentType = "live",   serverId = 1, addedAt = 1000L),
            FavoriteEntity(id = 11, contentId = 2, contentType = "movie",  serverId = 1, addedAt = 2000L),
            FavoriteEntity(id = 12, contentId = 3, contentType = "series", serverId = 1, addedAt = 3000L)
        )
        every { favoriteDao.observeAll(server.id) } returns flowOf(favs)
        every { liveRepository.observeChannels(server.id, null) } returns flowOf(listOf(ch))
        every { movieRepository.observeMovies(server.id, null) } returns flowOf(listOf(mo))
        every { seriesRepository.observeSeries(server.id, null) } returns flowOf(listOf(se))

        createViewModel().favorites.test {
            // skip any intermediate emissions (combine may fire before all flows emit)
            var items = awaitItem()
            while (items.size < 3) items = awaitItem()
            assertEquals(3, items.size)
            assertEquals(setOf("News 24", "Matrix", "Sopranos"), items.map { it.title }.toSet())
            assertEquals(setOf("Live", "Movie", "Series"), items.map { it.type }.toSet())
            cancelAndIgnoreRemainingEvents()
        }
    }

    @Test
    fun `removeFavorite delegates to favoriteDao deleteById`() = runTest {
        val vm = createViewModel()
        vm.removeFavorite(FavoriteItem(id = 7, type = "Live", title = "CNN"))

        coVerify { favoriteDao.deleteById(7) }
    }

    @Test
    fun `favorites is empty when no active server`() = runTest {
        every { authRepository.activeServerFlow() } returns flowOf(null)
        every { authRepository.getActiveServer() } returns null

        createViewModel().favorites.test {
            assertTrue(awaitItem().isEmpty())
            cancelAndIgnoreRemainingEvents()
        }
    }

    // ─── helpers ─────────────────────────────────────────────────────────────

    private fun createViewModel() = FavoritesViewModel(
        authRepository, favoriteDao, liveRepository, movieRepository, seriesRepository
    )

    private fun channel(streamId: Int, name: String) = Channel(
        streamId = streamId, name = name, streamIcon = "", categoryId = "1",
        categoryName = "General", epgChannelId = "", tvArchive = 0,
        tvArchiveDuration = 0, addedEpochSeconds = 0L, serverId = server.id
    )

    private fun movie(streamId: Int, name: String) = Movie(
        streamId = streamId, name = name, poster = "", categoryId = "2",
        rating = 0.0, rating5Based = 0.0, addedEpochSeconds = 0L,
        containerExtension = "mkv", serverId = server.id
    )

    private fun series(seriesId: Int, name: String) = Series(
        seriesId = seriesId, name = name, cover = "", plot = "",
        cast = "", director = "", genre = "", releaseDate = "",
        lastModified = 0L, rating = "", categoryId = "3", serverId = server.id
    )
}
