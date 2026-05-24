package com.bayyari.tv.perf

import com.bayyari.tv.di.PlayerModule
import com.bayyari.tv.ui.common.adapter.ChannelAdapter
import com.bayyari.tv.ui.common.adapter.MovieAdapter
import com.bayyari.tv.ui.common.adapter.SeriesAdapter
import com.bayyari.tv.util.Constants
import com.google.common.truth.Truth.assertThat
import org.junit.Test
import java.io.File

class PerformanceBudgetTest {

    @Test
    fun livePlayerBufferTargetsStayWithinTtffBudget() {
        assertThat(Constants.MIN_BUFFER_MS).isAtMost(5_000)
        assertThat(Constants.MAX_BUFFER_MS).isAtMost(30_000)
        assertThat(Constants.BUFFER_FOR_PLAYBACK_MS).isAtMost(1_000)
        assertThat(Constants.BUFFER_FOR_PLAYBACK_AFTER_REBUFFER_MS).isAtMost(3_000)
    }

    @Test
    fun playerModulePrioritizesTimeOverSizeThresholds() {
        val source = readMainSource("com/bayyari/tv/di/PlayerModule.kt")
        assertThat(source).contains("setPrioritizeTimeOverSizeThresholds(true)")
        assertThat(PlayerModule::class.java.simpleName).isEqualTo("PlayerModule")
    }

    @Test
    fun phoneBaseActivityDoesNotForceLandscape() {
        val source = readMainSource("com/bayyari/tv/ui/BaseActivity.kt")
        assertThat(source).doesNotContain("requestedOrientation")
        assertThat(source).doesNotContain("SCREEN_ORIENTATION_SENSOR_LANDSCAPE")
    }

    @Test
    fun launcherGateAvoidsEncryptedCredentialRepository() {
        val source = readMainSource("com/bayyari/tv/ui/MainActivity.kt")
        assertThat(source).doesNotContain("AuthRepository")
        assertThat(source).contains("PREF_HAS_ACTIVE_SERVER")
    }

    @Test
    fun primaryContentAdaptersUseDiffUtilListAdapter() {
        assertThat(ChannelAdapter::class.java.superclass.name).contains("ListAdapter")
        assertThat(MovieAdapter::class.java.superclass.name).contains("ListAdapter")
        assertThat(SeriesAdapter::class.java.superclass.name).contains("ListAdapter")
    }

    @Test
    fun primaryContentAdaptersDoNotCallNotifyDataSetChanged() {
        listOf(
            "com/bayyari/tv/ui/common/adapter/ChannelAdapter.kt",
            "com/bayyari/tv/ui/common/adapter/MovieAdapter.kt",
            "com/bayyari/tv/ui/common/adapter/SeriesAdapter.kt"
        ).forEach { path ->
            assertThat(readMainSource(path)).doesNotContain("notifyDataSetChanged")
        }
    }

    private fun readMainSource(relativePath: String): String {
        val root = File(System.getProperty("user.dir"))
        val candidates = listOf(
            File(root, "src/main/java/$relativePath"),
            File(root, "app/src/main/java/$relativePath")
        )
        val file = candidates.firstOrNull { it.exists() }
            ?: error("Missing source file: $relativePath under $root")
        return file.readText()
    }
}
