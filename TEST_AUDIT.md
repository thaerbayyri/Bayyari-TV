# BAYYARI TV Test Audit

## Scope
- Unit tests: `app/src/test/java/com/bayyari/tv/`
- Instrumented tests: `app/src/androidTest/java/com/bayyari/tv/`
- Removed orphan tests: `app/src/test/java/com/myiptv/app/` and `app/src/androidTest/java/com/myiptv/app/`

## Current Test Files
- `data/api/DynamicHostInterceptorTest.kt`: active-server host rewrite behavior.
- `data/api/XtreamApiServiceTest.kt`: Retrofit endpoint contracts and API parsing.
- `data/repository/AuthRepositoryTest.kt`: login, encrypted server persistence, failure handling, HTTPS-to-HTTP downgrade behavior.
- `data/repository/FullCatalogDownloadTest.kt`: large live/movie/series catalog refresh, chunked DAO replacement, and failure rollback expectations.
- `data/repository/LiveRepositoryTest.kt`: live channel refresh and DAO storage behavior.
- `domain/usecase/LoginUseCaseTest.kt`: login use-case UI state and error mapping.
- `domain/usecase/LoginUseCaseSuccessTest.kt`: successful login path.
- `perf/PerformanceBudgetTest.kt`: APK/performance budget guard.
- `player/IptvPlayerMediaSourceTest.kt`: media source and retry listener behavior.
- `server/ServerConnectionTest.kt`: server connectivity contract checks.
- `server/XtreamApiTest.kt`: Xtream API integration-style parsing tests.
- `stream/StreamFormatTest.kt`: stream format detection/URL expectations.
- `stream/StreamReachabilityTest.kt`: opt-in real-server stream health checks plus local MockWebServer redirect/reauth checks.
- `ui/catchup/CatchUpPlayerActivityTest.kt`: catch-up URL/player launch behavior.
- `ui/favorites/FavoritesViewModelTest.kt`: favorite mapping and server isolation behavior.
- `ui/live/LiveChannelFiltersTest.kt`: category/search/sort filtering.
- `update/UpdateManagerTest.kt`: update manifest parsing, version comparison, download verification, and installer validation.
- `util/M3uParserTest.kt`: M3U parsing, `url-tvg`, malformed entries, missing headers, missing group-title, and fallback ids.
- `util/StreamUrlBuilderTest.kt`: live/movie/episode/catch-up URL construction and path encoding.
- `util/CrashReporterTest.kt`: redaction of Xtream credential URLs in log/crash text.
- `util/SubtitleTrackExtractorTest.kt`: subtitle URL extraction and MIME detection.
- `PlayerPlaybackTest.kt`: generic playback state behavior.
- `androidTest/player/LivePlayerDirectStreamTest.kt`: device-level live player launch with direct stream intent.

## Fixes Made
- Updated `FullCatalogDownloadTest.kt` to mock and verify current DAO replacement APIs (`replaceAllForServer`) instead of removed `clearForServer` + `upsertAll` expectations.
- Removed the stale `com/myiptv/app` unit/instrumented test tree. Those tests were outside the app package and were skipped by CI filters that target `com.bayyari.tv.*`.
- Restored `StreamReachabilityTest` under `com.bayyari.tv.stream` and made real-server checks opt-in via `-Dstream.health.enabled=true` for the dedicated workflow health check.
- Extended `M3uParserTest.kt` for malformed `#EXTINF`, missing header fallback, and empty category id behavior.

## Remaining Gaps
- No full unit test yet for `EpgRepository` base64/timestamp fallback paths.
- No isolated `RefreshWorkerTest` covering no-server, retry, and success outcomes.
- No UI test confirming `FLAG_SECURE` at runtime.
- Instrumented coverage is still light; the existing device test focuses on live direct playback.

## Verification
- `.\gradlew.bat testDebugUnitTest --continue`
  - Result: PASS
  - Tests: 75
  - Failures: 0
  - Errors: 0
  - Skipped: 6
- `.\gradlew.bat assembleDebug`
  - Result: PASS
- `.\gradlew.bat testDebugUnitTest --tests "com.bayyari.tv.perf.PerformanceBudgetTest"`
  - Result: PASS
