package com.bayyari.tv.ui

import com.google.common.truth.Truth.assertThat
import org.junit.Test
import java.io.File

class RotationManifestTest {

    @Test
    fun phoneEntryScreens_openInSensorLandscape() {
        val manifest = readManifest()

        listOf(".ui.MainActivity", ".ui.auth.LoginActivity", ".ui.sync.SyncActivity").forEach { activityName ->
            val activityBlock = Regex(
                """<activity\s+android:name="$activityName"[\s\S]*?(?:</activity>|/>)"""
            ).find(manifest)?.value.orEmpty()

            assertThat(activityBlock).contains("""android:screenOrientation="sensorLandscape"""")
        }
    }

    @Test
    fun tvDetection_usesLeanbackOrTvModeOnly() {
        val source = readMainSource("com/bayyari/tv/util/DeviceUtils.kt")

        assertThat(source).contains("PREF_FORCE_PHONE_UI")
        assertThat(source).contains("UI_MODE_TYPE_TELEVISION")
        assertThat(source).contains("FEATURE_LEANBACK")
        assertThat(source).contains("return isTvMode || hasLeanback")
    }

    private fun readManifest(): String {
        val root = File(System.getProperty("user.dir") ?: ".")
        val candidates = listOf(
            File(root, "src/main/AndroidManifest.xml"),
            File(root, "app/src/main/AndroidManifest.xml")
        )
        val file = candidates.firstOrNull { it.exists() }
            ?: error("Missing manifest under $root")
        return file.readText()
    }

    private fun readMainSource(relativePath: String): String {
        val root = File(System.getProperty("user.dir") ?: ".")
        val candidates = listOf(
            File(root, "src/main/java/$relativePath"),
            File(root, "app/src/main/java/$relativePath")
        )
        val file = candidates.firstOrNull { it.exists() }
            ?: error("Missing source file: $relativePath under $root")
        return file.readText()
    }
}
