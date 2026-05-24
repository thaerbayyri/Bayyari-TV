# Architecture Guide — BAYYARI Player

Three-layer MVVM + Clean Architecture, single module. Events flow down (UI → Data), data flows up (Data → UI via Flow).

## Layer Overview

```
┌────────────────────────────────────────────────────┐
│                    UI Layer                         │
│  Fragment / Activity   ←   ViewModel               │
│  (ViewBinding views)       (StateFlow<UiState<T>>) │
├────────────────────────────────────────────────────┤
│                  Domain Layer                       │
│  domain/model/  — pure Kotlin data classes         │
│  (No use-case layer; logic lives in Repositories   │
│   or ViewModels for this project's scope)          │
├────────────────────────────────────────────────────┤
│                  Data Layer                         │
│  Repository  ←──── Room DAO (local, source of truth│
│              ←──── Retrofit API (remote)           │
└────────────────────────────────────────────────────┘
```

## UiState

Use the existing `util/UiState.kt` for screen state:

```kotlin
sealed class UiState<out T> {
    object Loading : UiState<Nothing>()
    data class Success<T>(val data: T) : UiState<T>()
    data class Error(val message: String, val code: Int? = null) : UiState<Nothing>()
    object Empty : UiState<Nothing>()
}
```

## Repository Pattern

```kotlin
@Singleton
class MovieRepository @Inject constructor(
    private val api: XtreamApiService,
    private val movieDao: MovieDao,
) {
    fun observeMovies(serverId: Int, categoryId: String?): Flow<List<Movie>> {
        val flow = if (categoryId.isNullOrBlank()) movieDao.observeAll(serverId)
                   else movieDao.observeByCategory(serverId, categoryId)
        return flow.map { entities -> entities.map { it.toDomain() } }
    }

    suspend fun refresh(server: Server): Int = withContext(Dispatchers.IO) {
        val dtos = runCatching { api.getVodStreams(server.username, server.password) }
            .getOrElse { return@withContext 0 }
        val entities = dtos.map { it.toEntity(server.id) }
        movieDao.clearForServer(server.id)
        movieDao.upsertAll(entities)
        entities.size
    }
}
```

## ViewModel Pattern

```kotlin
@HiltViewModel
class MovieViewModel @Inject constructor(
    private val authRepository: AuthRepository,
    private val movieRepository: MovieRepository,
) : ViewModel() {

    private val serverId = MutableStateFlow(authRepository.getActiveServer()?.id ?: 0)
    private val selectedCategory = MutableStateFlow<String?>(null)

    val movies = selectedCategory.flatMapLatest { category ->
        if (serverId.value == 0) flowOf(emptyList())
        else movieRepository.observeMovies(serverId.value, category)
    }.stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    fun refresh() {
        viewModelScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            movieRepository.refresh(server)
        }
    }

    fun selectCategory(categoryId: String?) {
        selectedCategory.value = categoryId?.takeIf { it.isNotBlank() }
    }
}
```

## Room DAO Pattern

```kotlin
@Dao
interface MovieDao {
    @Query("SELECT * FROM movies WHERE serverId = :serverId ORDER BY name ASC")
    fun observeAll(serverId: Int): Flow<List<MovieEntity>>

    @Query("SELECT * FROM movies WHERE serverId = :serverId AND categoryId = :categoryId")
    fun observeByCategory(serverId: Int, categoryId: String): Flow<List<MovieEntity>>

    @Upsert
    suspend fun upsertAll(entities: List<MovieEntity>)

    @Query("DELETE FROM movies WHERE serverId = :serverId")
    suspend fun clearForServer(serverId: Int)
}
```

## Entity → Domain Model Mapping

```kotlin
// In Repository (private extension)
private fun MovieEntity.toDomain(): Movie = Movie(
    streamId = streamId,
    name = name,
    streamIcon = streamIcon,
    categoryId = categoryId,
    serverId = serverId,
)

// Network DTO → Entity
private fun MovieDto.toEntity(serverId: Int): MovieEntity = MovieEntity(
    streamId = streamId,
    name = name.orEmpty(),
    streamIcon = streamIcon.orEmpty(),
    categoryId = categoryId.orEmpty(),
    serverId = serverId,
)
```

## Hilt Module Pattern

```kotlin
@Module
@InstallIn(SingletonComponent::class)
object DatabaseModule {

    @Provides @Singleton
    fun provideDatabase(@ApplicationContext ctx: Context): AppDatabase =
        Room.databaseBuilder(ctx, AppDatabase::class.java, "bayyari.db").build()

    @Provides fun provideMovieDao(db: AppDatabase): MovieDao = db.movieDao()
}
```

## WorkManager Refresh

Background sync is handled by `RefreshWorker` (triggered by `RefreshScheduler`). To add a new data type to the background sync, inject its repository into `RefreshWorker` and call `refresh(server)` there.

## Android TV Dual-UI Rule

Every phone feature has a paired Leanback variant:

| Phone | TV |
|-------|----|
| `LiveFragment` | `TvLiveFragment` |
| `MovieFragment` | `TvMovieFragment` |
| `MainActivity` | `TvMainActivity` |

TV fragments use Leanback (`BrowseSupportFragment`, `DetailsSupportFragment`) and share the same ViewModel.
