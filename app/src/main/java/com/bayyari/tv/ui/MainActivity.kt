package com.bayyari.tv.ui

import android.content.Intent
import android.os.Bundle
import android.util.Log
import android.widget.TextView
import android.content.pm.ActivityInfo
import androidx.core.content.ContextCompat
import androidx.navigation.NavController
import androidx.navigation.NavDestination
import androidx.navigation.fragment.NavHostFragment
import com.bayyari.tv.R
import com.bayyari.tv.databinding.ActivityMainBinding
import com.bayyari.tv.util.Constants
import com.bayyari.tv.util.CrashReporter
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

/**
 * Phone / tablet host. Custom top navbar (logo + nav chips + icons + avatar) replaces the legacy
 * BottomNavigationView. Each chip drives the [androidx.navigation.NavController] directly, and the
 * active chip is highlighted by [highlightChip] when [navController]'s destination changes.
 */
@AndroidEntryPoint
class MainActivity : BaseActivity() {

    @Inject lateinit var crashReporter: CrashReporter

    private lateinit var binding: ActivityMainBinding
    private lateinit var navController: NavController

    private val chipDestinations: List<Pair<Int, Int>> by lazy {
        listOf(
            R.id.chipHome to R.id.homeFragment,
            R.id.chipLive to R.id.liveFragment,
            R.id.chipMovies to R.id.movieFragment,
            R.id.chipSeries to R.id.seriesFragment,
            R.id.chipCatchup to R.id.catchUpFragment,
            R.id.chipFavorites to R.id.favoritesFragment,
            R.id.chipSettings to R.id.settingsFragment
        )
    }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        if (!hasActiveServer()) {
            startActivity(Intent(this, com.bayyari.tv.ui.auth.LoginActivity::class.java))
            finish()
            return
        }

        try {
            binding = ActivityMainBinding.inflate(layoutInflater)
            setContentView(binding.root)

            val navHost = if (savedInstanceState == null) {
                NavHostFragment.create(R.navigation.nav_graph).also { host ->
                    supportFragmentManager.beginTransaction()
                        .replace(R.id.nav_host_fragment, host)
                        .setPrimaryNavigationFragment(host)
                        .commitNow()
                }
            } else {
                supportFragmentManager.findFragmentById(R.id.nav_host_fragment) as NavHostFragment
            }
            navController = navHost.navController

            // Wire each chip to nav destination
            for ((chipId, destId) in chipDestinations) {
                findViewById<TextView>(chipId).setOnClickListener {
                    if (navController.currentDestination?.id != destId) {
                        navController.navigate(destId)
                    }
                }
            }

            navController.addOnDestinationChangedListener { _, destination, _ ->
                highlightChip(destination)
                updateOrientation(destination)
            }

            // Icon buttons (top right)
            binding.iconSearch.setOnClickListener {
                if (navController.currentDestination?.id != R.id.searchFragment) {
                    navController.navigate(R.id.searchFragment)
                }
            }
            binding.iconBell.setOnClickListener {
                if (navController.currentDestination?.id != R.id.favoritesFragment) {
                    navController.navigate(R.id.favoritesFragment)
                }
            }
            binding.avatar.setOnClickListener {
                if (navController.currentDestination?.id != R.id.settingsFragment) {
                    navController.navigate(R.id.settingsFragment)
                }
            }

            // Initial highlight
            navController.currentDestination?.let { highlightChip(it) }
        } catch (t: Throwable) {
            Log.e(TAG, "MainActivity setup failed", t)
            runCatching { crashReporter.recordException(t) }
            startActivity(Intent(this, com.bayyari.tv.ui.auth.LoginActivity::class.java))
            finish()
        }
    }

    private fun highlightChip(destination: NavDestination) {
        val activeChipId = chipDestinations.firstOrNull { it.second == destination.id }?.first
        for ((chipId, _) in chipDestinations) {
            val chip = findViewById<TextView>(chipId)
            if (chipId == activeChipId) {
                chip.setBackgroundResource(R.drawable.bg_navchip_active)
                chip.setTextColor(ContextCompat.getColor(this, R.color.colorPrimary))
            } else {
                chip.setBackgroundResource(android.R.color.transparent)
                chip.setTextColor(ContextCompat.getColor(this, R.color.colorTextSecondary))
            }
        }
    }

    private fun updateOrientation(destination: NavDestination) {
        requestedOrientation = when (destination.id) {
            R.id.homeFragment -> ActivityInfo.SCREEN_ORIENTATION_FULL_SENSOR
            R.id.liveFragment,
            R.id.movieFragment,
            R.id.movieDetailFragment,
            R.id.seriesFragment,
            R.id.seriesDetailFragment,
            R.id.seasonFragment,
            R.id.catchUpFragment,
            R.id.favoritesFragment -> ActivityInfo.SCREEN_ORIENTATION_SENSOR_LANDSCAPE
            else -> ActivityInfo.SCREEN_ORIENTATION_PORTRAIT
        }
    }

    private fun hasActiveServer(): Boolean =
        getSharedPreferences(Constants.APP_PREFS, MODE_PRIVATE)
            .getBoolean(Constants.PREF_HAS_ACTIVE_SERVER, false)

    companion object {
        private const val TAG = "MainActivity"
        const val EXTRA_SYNC_ON_START = "extra_sync_on_start"
    }
}
