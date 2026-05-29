package com.bayyari.tv.util

import com.google.common.truth.Truth.assertThat
import org.junit.Test

class CrashReporterTest {

    @Test
    fun `redactSensitiveLogText redacts xtream live credentials`() {
        val input = "Preparing http://provider.example:8080/live/user123/pass456/991.ts"

        val redacted = redactSensitiveLogText(input)

        assertThat(redacted).contains("http://provider.example:8080/live/[redacted]/[redacted]/991.ts")
        assertThat(redacted).doesNotContain("user123")
        assertThat(redacted).doesNotContain("pass456")
    }

    @Test
    fun `redactSensitiveLogText redacts movie series and timeshift credentials`() {
        val input = """
            movie=https://host/movie/name/password/44.mkv
            series=http://host/series/name/password/55.mp4
            catchup=http://host/timeshift/name/password/60/2026-05-25:12-00/88.ts
        """.trimIndent()

        val redacted = redactSensitiveLogText(input)

        assertThat(redacted).doesNotContain("name")
        assertThat(redacted).doesNotContain("password")
        assertThat(redacted).contains("https://host/movie/[redacted]/[redacted]/44.mkv")
        assertThat(redacted).contains("http://host/series/[redacted]/[redacted]/55.mp4")
        assertThat(redacted).contains("http://host/timeshift/[redacted]/[redacted]/60/2026-05-25:12-00/88.ts")
    }

    @Test
    fun `redactSensitiveLogText keeps non xtream urls readable`() {
        val input = "Manifest https://thaerbayyari.com/bayyari-update/update.json"

        val redacted = redactSensitiveLogText(input)

        assertThat(redacted).isEqualTo(input)
    }
}
