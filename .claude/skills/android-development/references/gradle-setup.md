# Gradle & Build Configuration — BAYYARI Player

Single-module app. All code lives in `app/`. No `build-logic/` or version catalog — dependencies are declared directly in `app/build.gradle.kts`.

## Key Versions

| Tool | Version |
|------|---------|
| AGP | 8.2.x (via `com.android.application`) |
| Kotlin | 1.9.x (kapt, not KSP) |
| compileSdk / targetSdk | 34 |
| minSdk | 23 |
| Hilt | 2.59.2 |
| Room | 2.8.4 |
| Media3 | 1.3.1 |
| Retrofit | 2.9.0 |
| Leanback | 1.2.0-alpha04 |

## Adding a Dependency

Edit `app/build.gradle.kts` in the `dependencies { }` block:

```kotlin
implementation("group:artifact:version")
kapt("group:compiler:version")         // annotation processors use kapt (not ksp)
testImplementation("group:test-lib:version")
```

Sync: `./gradlew assembleDebug` or Android Studio Gradle sync.

## Build Variants

| Variant | Notes |
|---------|-------|
| `debug` | `applicationId = "com.bayyari.tv.debug"`, no minification |
| `release` | minifyEnabled + R8, proguard-rules.pro |

Build debug APK: `./gradlew assembleDebug`
Output: `app/build/outputs/apk/debug/app-debug.apk`

There is also a pre-built APK at `BAYYARI-TV-debug.apk` in the repo root.

## Annotation Processing (kapt)

This project uses `kapt` (not KSP). All annotation processors must be declared as `kapt(...)`:
- Hilt: `kapt("com.google.dagger:hilt-compiler:...")`
- Room: `kapt("androidx.room:room-compiler:...")`
- Glide: `kapt("com.github.bumptech.glide:compiler:...")`

Do NOT switch to `ksp` — this would require migrating all three processors simultaneously.

## Room Schema

Room schema exports are written to `app/schemas/`. The schema location is configured in `kapt { arguments { arg("room.schemaLocation", ...) } }`. Include schema files in version control.

## Running Tests

```bash
# Unit tests
./gradlew test

# Instrumented tests (needs device or emulator)
./gradlew connectedDebugAndroidTest

# Build & install debug APK
./gradlew installDebug
```

## Gradle Wrapper

The project ships `gradlew` / `gradlew.bat` but NOT `gradle/wrapper/gradle-wrapper.jar`. On a fresh clone:
- Open in Android Studio (IDE downloads the jar automatically), OR
- Run `gradle wrapper --gradle-version 8.9 --distribution-type bin` if you have a system Gradle

Current wrapper version: 9.4.1 (see `.gradle/9.4.1/`).
