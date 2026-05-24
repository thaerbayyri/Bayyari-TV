# Testing Patterns — BAYYARI Player

## Test Types

| Type | Location | Runner | Purpose |
|------|----------|--------|---------|
| Unit tests | `app/src/test/` | JVM | ViewModel, Repository, util logic |
| Instrumented | `app/src/androidTest/` | Device / emulator | DB, end-to-end flows |

Run all unit tests:
```bash
./gradlew test
```

Run instrumented tests (requires connected device or emulator):
```bash
./gradlew connectedDebugAndroidTest
# or the alias:
./gradlew connectedTest
```

## ViewModel Test Pattern

Use `TestDispatcherRule` with `kotlinx-coroutines-test` and MockK (already in dependencies):

```kotlin
@OptIn(ExperimentalCoroutinesApi::class)
class FavoritesViewModelTest {

    @get:Rule val dispatcherRule = TestDispatcherRule()

    private val favoriteDao: FavoriteDao = mockk(relaxed = true)
    private val authRepository: AuthRepository = mockk()

    private lateinit var viewModel: FavoritesViewModel

    @Before
    fun setup() {
        every { authRepository.getActiveServer() } returns testServer
        every { favoriteDao.observeAll(any()) } returns flowOf(emptyList())
        viewModel = FavoritesViewModel(authRepository, favoriteDao)
    }

    @Test
    fun `items is empty when no favorites`() = runTest {
        val result = viewModel.items.first()
        assertTrue(result.isEmpty())
    }
}

class TestDispatcherRule(
    val dispatcher: TestDispatcher = UnconfinedTestDispatcher(),
) : TestWatcher() {
    override fun starting(description: Description) = Dispatchers.setMain(dispatcher)
    override fun finished(description: Description) = Dispatchers.resetMain()
}
```

## Repository Test Pattern

```kotlin
class LiveRepositoryTest {

    private val channelDao: ChannelDao = mockk(relaxed = true)
    private val api: XtreamApiService = mockk()
    private val m3uParser: M3uParser = M3uParser()

    private val repository = LiveRepository(api, channelDao, m3uParser)

    @Test
    fun `observeChannels returns mapped domain models`() = runTest {
        val entities = listOf(testChannelEntity())
        every { channelDao.observeAll(1) } returns flowOf(entities)

        val result = repository.observeChannels(serverId = 1, categoryId = null).first()

        assertEquals(1, result.size)
        assertEquals(entities[0].name, result[0].name)
    }
}
```

## Room DAO Test (Instrumented)

```kotlin
@RunWith(AndroidJUnit4::class)
class ChannelDaoTest {

    private lateinit var db: AppDatabase
    private lateinit var dao: ChannelDao

    @Before
    fun setup() {
        db = Room.inMemoryDatabaseBuilder(
            ApplicationProvider.getApplicationContext(),
            AppDatabase::class.java,
        ).allowMainThreadQueries().build()
        dao = db.channelDao()
    }

    @After
    fun teardown() = db.close()

    @Test
    fun upsertAndQuery() = runTest {
        dao.upsertAll(listOf(testChannelEntity(serverId = 1)))
        val result = dao.observeAll(1).first()
        assertEquals(1, result.size)
    }
}
```

## Turbine for Flow Testing

Use `turbine` (already in dependencies) to test Flow emissions sequentially:

```kotlin
@Test
fun `uiState emits Loading then Success`() = runTest {
    viewModel.uiState.test {
        assertEquals(UiState.Loading, awaitItem())
        // trigger data load
        awaitItem().let { state ->
            assertTrue(state is UiState.Success)
        }
        cancelAndIgnoreRemainingEvents()
    }
}
```

## Test Data Helpers

Define test fixtures at the bottom of each test file or in a shared `TestData.kt`:

```kotlin
fun testChannelEntity(serverId: Int = 1) = ChannelEntity(
    streamId = 100,
    name = "Test Channel",
    streamIcon = "",
    categoryId = "cat1",
    categoryName = "Sport",
    tvArchive = 0,
    tvArchiveDuration = 0,
    epgChannelId = "",
    added = 0L,
    serverId = serverId,
    directStreamUrl = null,
)

val testServer = Server(
    id = 1,
    url = "http://test.server:8080",
    username = "user",
    password = "pass",
    isM3uOnly = false,
)
```

## What NOT to test

- Glide image loading (side-effectful, slow)
- Navigation actions (use UI/Espresso tests or manual verification)
- ExoPlayer playback (Media3 provides its own test utilities if needed)
