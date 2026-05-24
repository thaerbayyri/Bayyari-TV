package com.myiptv.app.util

import com.google.common.truth.Truth.assertThat
import kotlinx.coroutines.flow.asFlow
import kotlinx.coroutines.flow.distinctUntilChanged
import kotlinx.coroutines.flow.toList
import kotlinx.coroutines.test.runTest
import org.junit.Test

class NetworkUtilsTest {

    @Test
    fun `connectivity state requires internet and validated capabilities`() {
        assertThat(isConnected(hasInternet = true, isValidated = true)).isTrue()
        assertThat(isConnected(hasInternet = true, isValidated = false)).isFalse()
        assertThat(isConnected(hasInternet = false, isValidated = true)).isFalse()
    }

    @Test
    fun `connectivity flow suppresses duplicate states`() = runTest {
        val values = listOf(false, false, true, true, false)
            .asFlow()
            .distinctUntilChanged()
            .toList()

        assertThat(values).containsExactly(false, true, false).inOrder()
    }

    private fun isConnected(hasInternet: Boolean, isValidated: Boolean): Boolean = hasInternet && isValidated
}
