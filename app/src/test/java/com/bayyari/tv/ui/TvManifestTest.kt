package com.bayyari.tv.ui

import org.junit.Assert.assertTrue
import org.junit.Test
import java.io.File

class TvManifestTest {

    @Test
    fun tvMainActivity_isDeclaredLandscape() {
        val manifestFile = listOf(
            File("src/main/AndroidManifest.xml"),
            File("app/src/main/AndroidManifest.xml")
        ).first { it.exists() }
        val manifest = manifestFile.readText()
        val tvActivityBlock = Regex(
            """<activity\s+android:name="\.ui\.TvMainActivity"[\s\S]*?</activity>"""
        ).find(manifest)?.value.orEmpty()

        assertTrue(
            "TvMainActivity should open in landscape on Android TV",
            tvActivityBlock.contains("""android:screenOrientation="landscape"""")
        )
    }

    @Test
    fun tvPlayerActivities_areDeclaredLandscape() {
        val manifestFile = listOf(
            File("src/main/AndroidManifest.xml"),
            File("app/src/main/AndroidManifest.xml")
        ).first { it.exists() }
        val manifest = manifestFile.readText()

        listOf(".ui.live.TvLivePlayerActivity", ".ui.movies.TvMoviePlayerActivity").forEach { activityName ->
            val activityBlock = Regex(
                """<activity\s+android:name="$activityName"[\s\S]*?/>"""
            ).find(manifest)?.value.orEmpty()

            assertTrue(
                "$activityName should stay landscape on Android TV",
                activityBlock.contains("""android:screenOrientation="landscape"""")
            )
        }
    }
}
