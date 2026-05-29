# BAYYARI TV Security & Performance Audit

## Findings

---
### [ACCEPTED] — Cleartext HTTP And User CA Trust Enabled
**File:** `app/src/main/res/xml/network_security_config.xml:2-10`, `app/src/main/AndroidManifest.xml:20-34`  
**Current behavior:** The app permits cleartext traffic globally and trusts both system and user-installed CAs.  
**Risk / Impact:** This is compatible with HTTP-only IPTV providers, but it allows network observers or enterprise/user CA roots to intercept credentials and stream URLs when providers use HTTP.  
**Fix:**
1. Keep `android:usesCleartextTraffic="true"` because the current provider supports HTTP only.
2. Keep `cleartextTrafficPermitted="true"` in `network_security_config.xml`.
3. Mitigate credential exposure elsewhere by redacting Xtream URLs from logs and crash reports.
**Verification:** Confirm `AndroidManifest.xml` keeps `android:usesCleartextTraffic="true"` and `network_security_config.xml` keeps `cleartextTrafficPermitted="true"`.
---

---
### [ACCEPTED] — HTTPS-To-HTTP Downgrade Supports HTTP-Only Providers
**File:** `app/src/main/java/com/bayyari/tv/data/repository/AuthRepository.kt:51-64`  
**Current behavior:** TLS-mismatch errors on HTTPS login are retried as HTTP and the downgraded URL is saved for the same server.  
**Risk / Impact:** The downgrade is scoped to that server, not all servers. HTTP exposes traffic to network interception, but this is required for providers that do not offer working HTTPS.  
**Fix:**
1. Keep the downgrade behavior enabled for provider compatibility.
2. Do not downgrade unrelated saved servers; this is already scoped by the saved active server URL.
**Verification:** Existing auth tests cover HTTPS-to-HTTP downgrade behavior.
---

---
### [FIXED] — Player Screens Missing Recent-Apps Screenshot Protection
**File:** `app/src/main/java/com/bayyari/tv/ui/BaseActivity.kt:10-16`  
**Current behavior:** `BaseActivity` now applies `FLAG_SECURE` together with `FLAG_KEEP_SCREEN_ON`.  
**Risk / Impact:** Before this fix, video content and credentials visible on app screens could appear in screenshots or Android Recent Apps thumbnails.  
**Fix:**
1. Fixed by adding `WindowManager.LayoutParams.FLAG_SECURE` in `BaseActivity`.
2. Because all app/player activities extend `BaseActivity`, this covers live, movie, episode, TV, catch-up, login, and settings screens.
**Verification:** Build passed; manual check: open a player screen and attempt Android screenshot/recent-app thumbnail capture.
---

---
### [FIXED] — Stream URL Was Logged During Direct Live Playback
**File:** `app/src/main/java/com/bayyari/tv/ui/live/LivePlayerActivity.kt:85-107`  
**Current behavior:** Direct stream preparation no longer logs the full stream URL, and playback error logging no longer writes exception detail that may include the URL.  
**Risk / Impact:** Xtream stream URLs contain username/password in the path; logging them exposes credentials in Logcat/crash collection.  
**Fix:**
1. Fixed `Log.d(TAG, "Preparing direct stream url=$directUrl")` to a redacted message.
2. Fixed player error logging to record only the ExoPlayer error code.
**Verification:** Search `LivePlayerActivity.kt` for `directUrl` logging and run live playback while checking Logcat.
---

---
### [FIXED] — Update Errors Exposed Raw Technical Messages In UI
**File:** `app/src/main/java/com/bayyari/tv/ui/settings/SettingsFragment.kt:125-179`, `app/src/main/res/values/strings.xml:134-145`  
**Current behavior:** Settings keeps detailed update/install errors in logs but shows short user-safe messages such as "Could not check for update" and "Install failed / cancelled".  
**Risk / Impact:** Raw HTTP/package/signature errors are noisy and can expose internal paths or implementation details to normal users.  
**Fix:**
1. Fixed check/download/install UI paths to use string resources.
2. Kept detailed messages in `Log.e` for debugging.
**Verification:** Trigger a bad `update.json`/bad APK and confirm the UI shows generic text while Logcat contains diagnostic detail.
---

---
### [FIXED] — File Crash Reporter Stores Plaintext Local Logs
**File:** `app/src/main/java/com/bayyari/tv/util/CrashReporter.kt:31-74`  
**Current behavior:** Crash logs are written to app-private `filesDir` as plaintext and capped to about 256 KB, but Xtream-style live/movie/series/timeshift URL credentials are redacted before file or Logcat output.  
**Risk / Impact:** App-private storage is sandboxed, but rooted/debug devices can read it. Stack traces could include sensitive exception messages.  
**Fix:**
1. Fixed by redacting credential path segments before writing log lines or exception traces.
2. Fixed Logcat exception output to avoid printing the raw throwable stack trace.
**Verification:** `CrashReporterTest` validates live/movie/series/timeshift credential redaction.
---

## Confirmed Security Controls
- `EncryptedPrefs` uses an AES256_GCM `MasterKey`, AES256_SIV preference keys, and AES256_GCM values; corrupt keystore prefs are wiped/retried once with no plaintext fallback (`EncryptedPrefs.kt:33-53`).
- Parental PIN is SHA-256 hashed before storage (`EncryptedPrefs.kt:159-176`).
- Server passwords are stored only inside encrypted preferences (`EncryptedPrefs.kt:71-80`).
- Exported activities are limited to launchers: `MainActivity` and `TvMainActivity`; there are no deep-link handlers in the manifest.
- Update installation verifies APK package name and signing key before opening Android's installer (`UpdateManager.kt:117-181`).

## Performance Audit
- Home stats use lightweight `COUNT(*)` flows, not full catalog list loads (`HomeViewModel.kt:75-88`).
- Home preview rows call `.take(20)` for live, movies, series, and favorites (`HomeViewModel.kt:63-73`, `111-130`).
- Search is parallelized with `async` across live, movie, and series repositories (`SearchUseCase.kt:18-24`).
- `RefreshWorker` refreshes live, movies, and series concurrently and retries on refresh failure (`RefreshWorker.kt:29-42`).
- `IptvPlayer` uses a managed retry scope, cancels it on release, and replaces old retry listeners before adding a new one (`IptvPlayer.kt:43-47`, `84-90`, `121-159`).
- DAO search queries are capped with `LIMIT 200`; full `observeAll()` queries are intentional catalog streams for list screens.

## Summary Table
| ID | Severity | File | Title | Fixed |
|---|---|---|---|---|
| SEC-001 | Accepted | `network_security_config.xml`, `AndroidManifest.xml` | Cleartext HTTP and user CA trust enabled | Accepted |
| SEC-002 | Accepted | `AuthRepository.kt` | HTTPS-to-HTTP downgrade supports HTTP-only providers | Accepted |
| SEC-003 | Medium | `BaseActivity.kt` | Missing screenshot protection | Yes |
| SEC-004 | Medium | `LivePlayerActivity.kt` | Stream URL logged during direct playback | Yes |
| SEC-005 | Low | `SettingsFragment.kt` | Raw update errors exposed in UI | Yes |
| SEC-006 | Low | `CrashReporter.kt` | Plaintext local crash log | Yes |

## Priority Fix Order
1. Add a `FLAG_SECURE` runtime regression test.
2. Keep log redaction tests in the unit suite.
3. Re-check HTTP provider playback after every release build.

## Intentional Design Decisions
- Cleartext HTTP remains enabled because many IPTV providers and stream CDNs are HTTP-only.
- User CA trust remains enabled because IPTV debugging and enterprise devices commonly require custom CA stores; residual MITM risk is documented above.
