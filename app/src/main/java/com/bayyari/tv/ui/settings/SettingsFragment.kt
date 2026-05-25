package com.bayyari.tv.ui.settings

import android.content.Intent
import android.os.Bundle
import android.util.Log
import androidx.activity.result.contract.ActivityResultContracts
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.viewModels
import androidx.preference.EditTextPreference
import androidx.preference.ListPreference
import androidx.preference.Preference
import androidx.preference.PreferenceFragmentCompat
import androidx.preference.SwitchPreferenceCompat
import androidx.navigation.fragment.findNavController
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.launch
import com.bayyari.tv.BuildConfig
import com.bayyari.tv.R
import com.bayyari.tv.update.CheckResult
import com.bayyari.tv.update.DownloadResult
import com.bayyari.tv.update.InstallStartResult
import com.bayyari.tv.update.UpdateManager
import com.bayyari.tv.ui.auth.LoginActivity
import com.bayyari.tv.util.toast
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class SettingsFragment : PreferenceFragmentCompat() {

    private val viewModel: SettingsViewModel by viewModels()
    private val updateManager: UpdateManager by lazy { UpdateManager(requireContext().applicationContext) }
    private var updatePreference: Preference? = null

    private val installPermissionLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) {
        if (updateManager.canRequestPackageInstalls()) {
            updateManager.cachedUpdateApk()?.let { apkFile ->
                startInstaller(apkFile)
            } ?: showUpdateStatus(getString(R.string.update_install_failed), loading = false)
        } else {
            showUpdateStatus(getString(R.string.update_install_permission), loading = false)
        }
    }

    override fun onCreatePreferences(savedInstanceState: Bundle?, rootKey: String?) {
        setPreferencesFromResource(R.xml.preferences_settings, rootKey)

        findPreference<Preference>("pref_change_playlist")?.setOnPreferenceClickListener {
            AlertDialog.Builder(requireContext())
                .setTitle(R.string.settings_change_playlist)
                .setMessage(R.string.settings_change_playlist_confirm)
                .setNegativeButton(R.string.action_cancel, null)
                .setPositiveButton(R.string.action_ok) { _, _ ->
                    viewModel.signOut()
                    val intent = Intent(requireContext(), LoginActivity::class.java)
                        .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
                    startActivity(intent)
                    requireActivity().finishAffinity()
                }
                .show()
            true
        }

        findPreference<Preference>("pref_servers")?.setOnPreferenceClickListener {
            findNavController().navigate(R.id.action_settings_to_server_manager)
            true
        }

        findPreference<ListPreference>("pref_default_player")?.setOnPreferenceChangeListener { _, newValue ->
            viewModel.setDefaultPlayer(newValue as String)
            true
        }

        findPreference<ListPreference>("pref_stream_format")?.setOnPreferenceChangeListener { _, newValue ->
            viewModel.setStreamFormat(newValue as String)
            true
        }

        findPreference<ListPreference>("pref_buffer_size")?.setOnPreferenceChangeListener { _, newValue ->
            viewModel.setBufferSizeMs((newValue as String).toInt())
            true
        }

        findPreference<SwitchPreferenceCompat>("pref_auto_play_next")?.setOnPreferenceChangeListener { _, newValue ->
            viewModel.setAutoPlayNext(newValue as Boolean)
            true
        }

        findPreference<EditTextPreference>("pref_parental_pin")?.setOnPreferenceChangeListener { _, newValue ->
            viewModel.setParentalPin(newValue as String)
            true
        }

        findPreference<Preference>("pref_app_info")?.summary = viewModel.getServerInfo()
        findPreference<Preference>("pref_app_version")?.summary =
            getString(R.string.settings_app_version, BuildConfig.VERSION_NAME, BuildConfig.VERSION_CODE)

        updatePreference = findPreference("pref_check_update")
        updatePreference?.setOnPreferenceClickListener {
            val cachedApk = updateManager.cachedUpdateApk()
            if (cachedApk != null) {
                startInstaller(cachedApk)
            } else {
                checkForUpdate()
            }
            true
        }

        findPreference<Preference>("pref_clear_cache")?.setOnPreferenceClickListener {
            viewLifecycleOwner.lifecycleScope.launch {
                viewModel.clearCache()
            }
            true
        }

        findPreference<Preference>("pref_restore_hidden_categories")?.setOnPreferenceClickListener {
            viewModel.clearHiddenLiveCategories()
            true
        }

        refreshUpdateSummary()
    }

    private fun checkForUpdate() {
        viewLifecycleOwner.lifecycleScope.launch {
            showUpdateStatus(getString(R.string.update_checking), loading = true)
            when (val result = updateManager.checkLatestRelease()) {
                CheckResult.NoUpdate -> {
                    Log.i(TAG, "No update available")
                    showUpdateStatus(getString(R.string.update_none), loading = false)
                }
                is CheckResult.Error -> {
                    Log.e(TAG, "Update check failed: ${result.message}")
                    showUpdateStatus(result.message, loading = false)
                }
                is CheckResult.UpdateAvailable -> {
                    Log.i(TAG, "Update available: ${result.update.displayVersion}")
                    showUpdateStatus(getString(R.string.update_available), loading = true)
                    downloadUpdate(result.update)
                }
            }
        }
    }

    private suspend fun downloadUpdate(update: com.bayyari.tv.update.AvailableUpdate) {
        showUpdateStatus(getString(R.string.update_downloading), loading = true)
        when (val result = updateManager.downloadApk(update)) {
            is DownloadResult.Error -> {
                Log.e(TAG, "Update download failed: ${result.message}")
                showUpdateStatus(result.message, loading = false)
            }
            is DownloadResult.Success -> {
                Log.i(TAG, "Update download complete")
                showUpdateStatus(getString(R.string.update_download_complete), loading = false)
            }
        }
    }

    private fun startInstaller(apkFile: java.io.File) {
        when (val result = updateManager.startInstall(requireActivity(), apkFile)) {
            InstallStartResult.Started -> {
                showUpdateStatus(getString(R.string.update_install_started), loading = false)
            }
            InstallStartResult.PermissionRequired -> {
                showUpdateStatus(getString(R.string.update_install_permission), loading = false)
                installPermissionLauncher.launch(updateManager.unknownSourcesSettingsIntent())
            }
            is InstallStartResult.Error -> {
                Log.e(TAG, "Install failed: ${result.message}")
                showUpdateStatus(result.message.ifBlank { getString(R.string.update_install_failed) }, loading = false)
            }
        }
    }

    private fun showUpdateStatus(message: String, loading: Boolean) {
        updatePreference?.isEnabled = !loading
        updatePreference?.summary = message
        toast(message)
    }

    private fun refreshUpdateSummary() {
        if (updateManager.cachedUpdateApk() != null) {
            updatePreference?.summary = getString(R.string.update_download_complete)
        }
    }

    companion object {
        private const val TAG = "SettingsFragment"
    }
}

