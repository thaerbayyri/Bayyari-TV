# Module 1 — APK & Static Analysis Report

Target APK: E:\nashamaiptv page\apps\BAYYARI player\BAYYARI-TV-debug.apk

## Summary
- Analysis type: Static (APK inspection, manifest dump, extracted file search).
- Tools used: `aapt` (build-tools), PowerShell extraction and text search.
- Missing local tools: `apktool`, `apkid`, `strings` (these were not available on the host; see artifacts).

## Key Findings (evidence-backed)
- **App is debuggable:** `application-debuggable` present. Evidence: [aapt badging](artifacts/module1/aapt_badging.txt#L1-L2).
- **Cleartext allowed:** `android:usesCleartextTraffic="true"` in manifest and `networkSecurityConfig` referenced. Evidence: [manifest xmltree](artifacts/module1/manifest_xmltree.txt#L40-L46).
- **Exported components:** Several components are exported intentionally or by manifest flags:
  - `com.bayyari.tv.ui.MainActivity` — exported=true (launchable). Evidence: [manifest dump](artifacts/module1/manifest_xmltree.txt#L59-L66).
  - `com.bayyari.tv.ui.TvMainActivity` — exported=true (leanback). Evidence: [manifest dump](artifacts/module1/manifest_xmltree.txt#L73-L82).
  - `com.bayyari.tv.ui.auth.LoginActivity` — exported=false (expected). Evidence: [manifest dump](artifacts/module1/manifest_xmltree.txt#L85-L89).
  - `androidx.work.impl.background.systemjob.SystemJobService` — exported=true (3rd-party library; risk if not protected). Evidence: [manifest dump](artifacts/module1/manifest_xmltree.txt#L165-L171).
  - `androidx.work.diagnostics.REQUEST_DIAGNOSTICS` receiver — exported=true. Evidence: [manifest dump](artifacts/module1/manifest_xmltree.txt#L264-L270).
- **Network permissions present:** `INTERNET`, `ACCESS_NETWORK_STATE`, `ACCESS_WIFI_STATE`. Evidence: [aapt badging](artifacts/module1/aapt_badging.txt#L1-L6).
- **APK installed on emulator successfully:** Evidence: [adb install output](artifacts/module1/adb_install.txt#L1).

## What I searched for
- Searched extracted APK files for plaintext URLs and common secret keywords (`http://`, `https://`, `apikey`, `api_key`, `password`, `secret`, `token`, `private_key`). No obvious plaintext secrets were found in the extracted files. Evidence: [extracted search output](artifacts/module1/extracted_strings_search.txt) (empty result).

## Decompilation and additional searches
- `apktool` decompiled the APK successfully into `artifacts/module1/decompiled/`. Log: [apktool run](artifacts/module1/apktool_run.txt#L1-L10).
- Decompiled `AndroidManifest.xml` confirms earlier manifest findings (debuggable, cleartext allowed, exported components). See: [decompiled manifest](artifacts/module1/decompiled/AndroidManifest.xml).
- Searched decompiled files for plaintext URLs and common secret keywords (`http://`, `https://`, `apikey`, `api_key`, `password`, `secret`, `token`, `private_key`, `authorization`) — no matches were found. Evidence: [decompiled search output](artifacts/module1/decompiled_search.txt) (empty result).
- `apkid` (packer/obfuscator detection) and `strings` binary-based extraction still not available on host; placeholders remain: [apkid log](artifacts/module1/apkid.txt#L1), [strings placeholder](artifacts/module1/strings_search.txt#L1).

## Risk Rating (quick)
- High: Application debuggable in distributed APK; cleartext network allowed.
- Medium: Exported 3rd-party job/service components (`SystemJobService`, diagnostic receivers) may expose attack surface if not protected.
- Low: No plaintext API keys or tokens found in extracted resources.

## Immediate Remediations (prioritized)
1. Disable `android:debuggable` for release builds (build.gradle: ensure `debuggable false` in release). Verify signing and build pipeline strips debug flags.
2. Enforce TLS only: set `usesCleartextTraffic="false"` and harden `network_security_config.xml` to disallow cleartext for production hosts.
3. Reduce exported component exposure: mark activities/services/receivers `exported="false"` unless required, or protect them with permissions.
4. Remove debug logging from release builds (disable `HttpLoggingInterceptor` in release builds and ensure no sensitive data is logged).
5. Remove insecure fallback in `EncryptedPrefs` that falls back to plaintext SharedPreferences; implement secure fallback (e.g., fail-safe error reporting, require user action, or use alternative keystore-backed approach).
6. Consider certificate pinning and token handling improvements (avoid embedding long-lived credentials in APK).

## Suggested Next Actions
- I can install `apktool`, `apkid`, and proper `strings` tools and run them to expand evidence (recommended). This will allow decompilation to confirm no hard-coded secrets in smali/resources and run packer/obfuscator detection.
- Run Module‑2 dynamic testing (Frida, Burp intercept) with emulator still running to test runtime behaviors, TLS enforcement, and data leakage.

## Artifacts
- Manifest dump: [artifacts/module1/manifest_xmltree.txt](artifacts/module1/manifest_xmltree.txt)
- aapt badging: [artifacts/module1/aapt_badging.txt](artifacts/module1/aapt_badging.txt)
- APK install log: [artifacts/module1/adb_install.txt](artifacts/module1/adb_install.txt)
- Extracted file search: [artifacts/module1/extracted_strings_search.txt](artifacts/module1/extracted_strings_search.txt)
- Tool placeholders: [artifacts/module1/apktool.txt](artifacts/module1/apktool.txt), [artifacts/module1/apkid.txt](artifacts/module1/apkid.txt), [artifacts/module1/strings_search.txt](artifacts/module1/strings_search.txt)


Report generated by automated Module‑1 run.
