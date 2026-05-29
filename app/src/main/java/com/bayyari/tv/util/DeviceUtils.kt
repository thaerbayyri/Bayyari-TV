package com.bayyari.tv.util

import android.app.UiModeManager
import android.content.Context
import android.content.res.Configuration
import android.content.pm.PackageManager

/**
 * True when the device has a proper Android TV (Leanback) environment.
 * Used to decide whether to launch [TvMainActivity] with Leanback fragments.
 * Devices that lack Leanback (many Android TV boxes / smart TVs) must NOT
 * use this path — their firmware doesn't support BrowseSupportFragment and
 * will crash immediately.
 */
fun Context.isTelevisionDevice(): Boolean {
    val prefs = getSharedPreferences(Constants.APP_PREFS, Context.MODE_PRIVATE)
    if (prefs.getBoolean(Constants.PREF_FORCE_PHONE_UI, false)) {
        return false
    }
    val uiModeManager = getSystemService(Context.UI_MODE_SERVICE) as? UiModeManager
    val isTvMode = uiModeManager?.currentModeType == Configuration.UI_MODE_TYPE_TELEVISION
    val hasLeanback = packageManager.hasSystemFeature(PackageManager.FEATURE_LEANBACK)
    // Only treat device as "TV" when it has genuine Leanback support.
    // The old "!hasTouchscreen" condition was routing Android boxes without
    // Leanback into TvMainActivity, causing an immediate BrowseSupportFragment crash.
    return isTvMode || hasLeanback
}
