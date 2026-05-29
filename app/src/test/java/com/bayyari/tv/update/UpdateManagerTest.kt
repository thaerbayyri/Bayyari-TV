package com.bayyari.tv.update

import org.junit.Assert.assertEquals
import org.junit.Test

class UpdateManagerTest {

    @Test
    fun compareVersions_detectsNewerWebsiteVersion() {
        assertEquals(1, UpdateManager.compareVersions("v1.0.5", "1.0.4"))
    }

    @Test
    fun compareVersions_treatsSameVersionAsNoUpdate() {
        assertEquals(0, UpdateManager.compareVersions("v1.0.0", "1.0.0"))
    }

    @Test
    fun compareVersions_ignoresDebugSuffix() {
        assertEquals(0, UpdateManager.compareVersions("v1.0.0", "1.0.0-debug"))
    }

    @Test
    fun isNewerVersion_detectsNewerNameWhenCodeMatches() {
        assertEquals(true, UpdateManager.isNewerVersion(5, "1.0.5", currentCode = 5, currentName = "1.0.4"))
    }

    @Test
    fun isNewerVersion_rejectsOlderCodeEvenWithNewerName() {
        assertEquals(false, UpdateManager.isNewerVersion(4, "9.0.0", currentCode = 5, currentName = "1.0.4"))
    }

    @Test
    fun isNewerVersion_rejectsSameCodeAndSameName() {
        assertEquals(false, UpdateManager.isNewerVersion(6, "1.0.5", currentCode = 6, currentName = "1.0.5"))
    }
}
