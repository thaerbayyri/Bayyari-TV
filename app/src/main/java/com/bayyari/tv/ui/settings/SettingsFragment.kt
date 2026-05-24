package com.bayyari.tv.ui.settings

import android.content.Intent
import android.os.Bundle
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
import com.bayyari.tv.R
import com.bayyari.tv.ui.auth.LoginActivity
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class SettingsFragment : PreferenceFragmentCompat() {

    private val viewModel: SettingsViewModel by viewModels()

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
    }
}
