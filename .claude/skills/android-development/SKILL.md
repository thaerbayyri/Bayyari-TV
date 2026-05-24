---
name: android-development
description: Create production-quality Android features for the BAYYARI IPTV player. Use when adding screens, ViewModels, Fragments, repositories, DAOs, Hilt modules, or Media3 player integration. Triggers on requests to create Android features, screens, adapters, data layers, or when asked about BAYYARI's architecture patterns.
---

# Android Development — BAYYARI Player

Single-module Kotlin Android app. Uses Views + ViewBinding (not Compose), MVVM, Hilt, Room, Retrofit, Media3, and Leanback TV UI.

Package: `com.bayyari.tv` | `app/src/main/java/com/bayyari/tv/`

## Quick Reference

| Task | Reference File |
|------|----------------|
| Architecture layers (UI, Domain, Data) | [architecture.md](references/architecture.md) |
| Fragment / ViewBinding / Adapter patterns | [views-patterns.md](references/views-patterns.md) |
| Gradle & build configuration | [gradle-setup.md](references/gradle-setup.md) |
| Testing approach | [testing.md](references/testing.md) |

## Generate a Feature Scaffold

```bash
python .claude/skills/android-development/scripts/generate_feature.py \
  <feature-name> \
  --package com.bayyari.tv \
  --path "app/src/main/java/com/bayyari/tv"
```

Example — add a "Favorites" screen:
```bash
python .claude/skills/android-development/scripts/generate_feature.py \
  favorites \
  --package com.bayyari.tv \
  --path "app/src/main/java/com/bayyari/tv"
```

This creates:
- `ui/favorites/FavoritesFragment.kt`
- `ui/favorites/FavoritesViewModel.kt`
- `ui/favorites/FavoritesAdapter.kt`

You still need to: add a layout XML, register the fragment in `nav_graph.xml`, and wire any new repository/DAO dependencies into Hilt modules under `di/`.

## Workflow Decision Tree

**Adding a new screen?**
→ Read [views-patterns.md](references/views-patterns.md) for Fragment + ViewModel + Adapter
→ Add layout XML in `app/src/main/res/layout/`
→ Add navigation action in `res/navigation/nav_graph.xml`

**Adding a data source?**
→ Read data layer section in [architecture.md](references/architecture.md)
→ Create Repository + DAO + Entity, bind in `di/DatabaseModule.kt` or `di/NetworkModule.kt`

**Adding a playback screen?**
→ Extend `LivePlayerActivity` or `MoviePlayerActivity` as a reference
→ Use `Media3 / ExoPlayer` via `PlayerModule`

**Adding Android TV support?**
→ Pair every phone Fragment with a `Tv*Fragment` using Leanback (`BrowseSupportFragment`, `DetailsSupportFragment`)
→ Phone entry point: `MainActivity` → Leanback entry point: `TvMainActivity`

## Core Principles

1. **Offline-first**: Room is the source of truth; repositories refresh from network and write locally
2. **Unidirectional data flow**: UI collects StateFlow from ViewModel; ViewModel never references Views
3. **Reactive streams**: Repositories expose `Flow<T>`; ViewModels convert to `StateFlow` via `stateIn`
4. **`UiState<T>`**: Use `util/UiState.kt` sealed class (`Loading`, `Success<T>`, `Error`, `Empty`) for screen state
5. **Dual UI**: Every feature has a phone variant and a Leanback TV variant

## Source Layout

```
app/src/main/java/com/bayyari/tv/
├── data/
│   ├── api/            # Retrofit service + interceptors
│   │   └── models/     # Network DTOs
│   ├── local/
│   │   ├── dao/        # Room DAOs
│   │   ├── entities/   # Room entities
│   │   └── AppDatabase.kt
│   ├── repository/     # Repository implementations
│   └── work/           # WorkManager workers
├── di/                 # Hilt modules (Database, Network, Player…)
├── domain/
│   └── model/          # Pure-Kotlin domain models
├── ui/
│   ├── common/         # Shared adapters & base classes
│   ├── live/           # Live TV screen
│   ├── movies/         # VOD screen
│   ├── series/         # Series screen
│   ├── search/         # Search
│   ├── settings/       # Settings / server manager
│   ├── MainActivity.kt
│   └── TvMainActivity.kt
└── util/               # Extensions, UiState, EncryptedPrefs…
```
