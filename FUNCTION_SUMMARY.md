# BAYYARI TV Function Summary

## App Identity & Purpose
BAYYARI TV (`com.bayyari.tv`) is an Android IPTV player for phones, tablets, and Android TV/Fire TV. It signs into Xtream Codes API providers or stores direct M3U playlist URLs, syncs live channels, movies, series, EPG, favorites, and watch history into a Room cache, then plays live, VOD, episode, and catch-up streams through Media3/ExoPlayer.

## User Flows

### First Launch: Xtream Server
- `LoginActivity` hosts `LoginFragment`.
- User enters server URL, username, password, and label.
- `LoginViewModel` calls `LoginUseCase`, which delegates to `AuthRepository.login()`.
- `AuthRepository` normalizes the URL, saves the server in `EncryptedPrefs`, calls `XtreamApiService.login()`, merges expiry/max-connection metadata, and falls back from HTTPS to HTTP for TLS-mismatch providers.
- Successful login opens `SyncActivity`; `SyncViewModel` refreshes live, movies, and series, then opens `MainActivity`.

### First Launch: M3U URL
- `LoginFragment` opens `AddServerFragment`.
- The user enters an M3U URL/label.
- The server is stored through `AuthRepository`, then the app enters the same sync/home path.
- `M3uParser` supports `#EXTM3U url-tvg`, `tvg-id`, `tvg-name`, `tvg-logo`, and `group-title`, now gracefully skips malformed entries and can parse valid `#EXTINF` entries without a header.

### Live TV
- `LiveFragment` observes `LiveViewModel`, categories, hidden-category preferences, search text, sort mode, and channel rows from `LiveRepository`.
- Selecting a channel starts inline preview playback; tapping the preview opens `LivePlayerActivity`.
- `LivePlayerViewModel`/`StreamUrlBuilder` build HLS or TS URLs.
- `LivePlayerActivity` uses `IptvPlayer`, PiP, external-player intent, audio/subtitle menus, EPG overlay, and retry fallback between `.ts` and `.m3u8` candidates.
- Catch-up starts through `CatchUpFragment` and `CatchUpPlayerActivity`, which build Xtream `timeshift` URLs.

### Movies
- `MovieFragment` lists movies by category/search/sort from `MovieViewModel` and `MovieRepository`.
- `MovieDetailFragment` loads poster, rating, metadata, and network detail through `MovieDetailViewModel`.
- `MoviePlayerActivity` builds `/movie/{user}/{pass}/{id}.{ext}` URLs and writes watch history/resume state.
- Movies can be favorited from detail/home flows and opened later from Favorites.

### Series
- `SeriesFragment` lists series by category/search/sort from `SeriesViewModel` and `SeriesRepository`.
- `SeriesDetailFragment` loads full series info, seasons, and episode metadata from Xtream.
- `SeasonFragment` starts `EpisodePlayerActivity`, passing episode id, extension, and subtitle URLs.
- Series can be favorited from detail/home flows and opened later from Favorites.

### Search
- `SearchFragment` and `SearchResultsFragment` display cross-catalog results.
- `SearchUseCase.searchAll()` runs live, movie, and series repository searches in parallel with `async`, then returns the merged triple.
- DAO search queries are guarded with `LIMIT 200`.

### Favorites
- `FavoriteDao` stores `live`, `movie`, and `series` favorites with `serverId` isolation.
- `FavoritesViewModel` observes the active server and joins favorite rows to current live/movie/series catalog data.
- Favorite rows open the correct live player, movie detail/player, or series detail flow.

### Settings, Updates, And Servers
- `SettingsFragment` manages default player, stream format, buffer size, auto-play next episode, parental PIN, cache clearing, hidden category restore, version display, and update checks.
- `ServerManagerFragment` adds, removes, and switches saved IPTV providers.
- `UpdateManager` checks `update.json`, compares version code/name, downloads an APK, verifies SHA-256 when supplied, verifies package/signature against the installed app, then opens Android's package installer.
- `MainActivity` checks for updates on app open without blocking startup.

### Background Refresh
- `RefreshScheduler` schedules periodic WorkManager refresh.
- `RefreshWorker` refreshes live channels, movies, and series concurrently for the active server and retries on refresh failure.

## Feature Inventory

- Xtream login: `ui/auth/LoginFragment.kt`, `ui/auth/LoginViewModel.kt`, `domain/usecase/LoginUseCase.kt`, `data/repository/AuthRepository.kt`.
- M3U playlist server: `ui/auth/AddServerFragment.kt`, `util/M3uParser.kt`, `data/repository/AuthRepository.kt`.
- Catalog sync: `ui/sync/SyncActivity.kt`, `ui/sync/SyncViewModel.kt`, `LiveRepository`, `MovieRepository`, `SeriesRepository`; DAOs replace server catalogs in chunks.
- Live TV: `ui/live/LiveFragment.kt`, `ui/live/LiveViewModel.kt`, `data/repository/LiveRepository.kt`, `ChannelDao.kt`.
- EPG/catch-up: `data/repository/EpgRepository.kt`, `ui/live/EpgFragment.kt`, `ui/catchup/CatchUpFragment.kt`, `ui/catchup/CatchUpPlayerActivity.kt`.
- Movies: `ui/movies/MovieFragment.kt`, `MovieDetailFragment.kt`, `MoviePlayerActivity.kt`, `MovieRepository.kt`, `MovieDao.kt`.
- Series: `ui/series/SeriesFragment.kt`, `SeriesDetailFragment.kt`, `SeasonFragment.kt`, `EpisodePlayerActivity.kt`, `SeriesRepository.kt`, `SeriesDao.kt`.
- Search: `ui/search/SearchFragment.kt`, `SearchResultsFragment.kt`, `domain/usecase/SearchUseCase.kt`.
- Favorites: `ui/favorites/FavoritesFragment.kt`, `FavoritesViewModel.kt`, `FavoriteDao.kt`.
- Continue watching: `WatchHistoryRepository.kt`, `WatchHistoryDao.kt`, movie/episode player activities.
- Settings/security prefs: `ui/settings/SettingsFragment.kt`, `SettingsViewModel.kt`, `util/EncryptedPrefs.kt`.
- Android TV: `ui/TvMainActivity.kt`, `ui/home/TvHomeFragment.kt`, `ui/live/TvLiveFragment.kt`, `ui/movies/TvMovieFragment.kt`, `ui/series/TvSeriesFragment.kt`, TV player activities.
- Background refresh: `data/work/RefreshWorker.kt`, `data/work/RefreshScheduler.kt`.
- Update system: `update/UpdateManager.kt`, `Constants.UPDATE_JSON_URL`, `bayyari-update/update.json`.

## Architecture Overview
- UI: Activities/fragments plus view binding.
- ViewModels: Hilt-injected, expose `Flow`/`StateFlow`; common sharing pattern is `SharingStarted.WhileSubscribed(5_000)`.
- Domain: `Channel`, `Movie`, `Series`, `EpgEntry`, `Server`, `WatchEntry`, and use cases.
- Data: Repositories coordinate API + Room DAOs.
- Persistence: Room entities are isolated by `serverId`; saved server credentials are in `EncryptedSharedPreferences`.
- DI: `NetworkModule`, `DatabaseModule`, `PlayerModule`, and `CrashReporterModule`.
- Navigation: Jetpack Navigation for phone/tablet and explicit TV fragment transactions.
- Network host selection: `DynamicHostInterceptor` rewrites placeholder Retrofit hosts to the active server.

## Data Model
- `Server`: encrypted preference model with `id`, `label`, `url`, `username`, `password`, `expiresAtEpochSeconds`, `maxConnections`.
- `ChannelEntity`: `streamId`, `name`, `categoryId`, `categoryName`, `streamIcon`, `epgChannelId`, `tvArchive`, `serverId`, `directStreamUrl`.
- `MovieEntity`: `streamId`, `name`, `poster`, `rating`, `rating5Based`, `categoryId`, `containerExtension`, `serverId`.
- `SeriesEntity`: `seriesId`, `name`, `cover`, `genre`, `rating`, `categoryId`, `serverId`.
- `EpgEntity`: `streamId`, `serverId`, `title`, `description`, `startMs`, `endMs`, `hasArchive`.
- `FavoriteEntity`: `contentId`, `contentType`, `serverId`, `addedAt`, with uniqueness across content/server/type.
- `WatchHistoryEntity`: `contentId`, `contentType`, `positionMs`, `durationMs`, `watchedAt`, `serverId`.
- `CategoryEntity`: `categoryId`, `kind`, `name`, `serverId`, composite key by server/category/kind.

## Network Layer
- OkHttp timeouts are `connect=20s`, `read=90s`, `write=30s`.
- Debug builds use BASIC HTTP logging; release builds use `HttpLoggingInterceptor.Level.NONE`.
- `XtreamApiService` covers login, live categories/streams, VOD categories/streams/info, series categories/list/info, short EPG, and simple data table.
- Cleartext is intentionally allowed because many IPTV providers and stream CDNs are HTTP-only.

## Player Stack
- `IptvPlayer` wraps singleton ExoPlayer creation, MediaSourceFactory, MIME hints, audio/subtitle track selection, and retry scheduling.
- Retry state is held in a managed `CoroutineScope`, cancelled on `release()`, and `addRetryListener()` replaces any previous retry listener.
- `PlayerService` provides Media3 session foreground playback.
- All `BaseActivity` screens now set `FLAG_SECURE`; player activities also support PiP.

## Known Constraints & Design Decisions
- Cleartext HTTP and user CA trust are deliberate for IPTV compatibility but carry MITM risk.
- HTTPS-to-HTTP downgrade is scoped to the saved active server only and is used when TLS-mismatch errors are detected.
- `EncryptedPrefs` uses AES256_GCM master key, AES256_SIV keys, AES256_GCM values, wipes/retries corrupt keystore prefs once, and has no plaintext fallback.
- App database is Room version 1 with `exportSchema=false` and destructive migration fallback.
- Android TV/Leanback and `security-crypto` dependencies are alpha-series in this project.
- KAPT is still used instead of KSP for Hilt.
