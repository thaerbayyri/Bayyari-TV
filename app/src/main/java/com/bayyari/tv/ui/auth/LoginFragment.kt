package com.bayyari.tv.ui.auth

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.view.inputmethod.InputMethodManager
import android.content.Context
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentLoginBinding
import com.bayyari.tv.ui.MainActivity
import com.bayyari.tv.ui.sync.SyncActivity
import com.bayyari.tv.util.isTelevisionDevice
import com.bayyari.tv.util.UiState
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class LoginFragment : Fragment(R.layout.fragment_login) {

    private val viewModel: LoginViewModel by viewModels()
    private var binding: FragmentLoginBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentLoginBinding.bind(view)
        val b = binding ?: return

        b.buttonLogin.setOnClickListener {
            hideKeyboard()
            b.textServerInfo.text = ""
            viewModel.login(
                serverUrl = b.editServer.text?.toString().orEmpty().trim(),
                username = b.editUsername.text?.toString().orEmpty().trim(),
                password = b.editPassword.text?.toString().orEmpty(),
                label = "BAYYARI-TV",
                remember = b.switchRemember.isChecked
            )
        }

        // Trigger login on keyboard "Done" on the password field
        b.editPassword.setOnEditorActionListener { _, _, _ ->
            b.buttonLogin.performClick()
            true
        }

        viewLifecycleOwner.collectStarted(viewModel.state) { state ->
            when (state) {
                is UiState.Loading -> {
                    b.buttonLogin.isEnabled = false
                    b.progressLogin.visibility = View.VISIBLE
                    b.textServerInfo.text = ""
                    b.textServerInfo.setTextColor(requireContext().getColor(R.color.colorTextSecondary))
                }
                is UiState.Success -> {
                    b.buttonLogin.isEnabled = true
                    b.progressLogin.visibility = View.GONE
                    val server = state.data
                    val expires = if (server.expiresAtEpochSeconds > 0) {
                        val date = java.util.Date(server.expiresAtEpochSeconds * 1000)
                        java.text.SimpleDateFormat("MMM d, yyyy", java.util.Locale.getDefault()).format(date)
                    } else "-"
                    b.textServerInfo.text =
                        getString(R.string.login_subscription_expires, expires) +
                        "\n" + getString(R.string.login_max_connections, server.maxConnections)
                    b.textServerInfo.setTextColor(requireContext().getColor(R.color.colorTextSecondary))
                    startActivity(
                        Intent(requireContext(), SyncActivity::class.java)
                            .putExtra(MainActivity.EXTRA_SHOW_WELCOME_POPUP, true)
                            .putExtra(SyncActivity.EXTRA_TV_ENTRY, shouldReturnToTv())
                            .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
                    )
                    requireActivity().finish()
                }
                is UiState.Error -> {
                    b.buttonLogin.isEnabled = true
                    b.progressLogin.visibility = View.GONE
                    b.textServerInfo.text = state.message
                    b.textServerInfo.setTextColor(requireContext().getColor(android.R.color.holo_red_light))
                }
                UiState.Empty -> {
                    b.buttonLogin.isEnabled = true
                    b.progressLogin.visibility = View.GONE
                    b.textServerInfo.text = ""
                }
            }
        }
    }

    private fun hideKeyboard() {
        val imm = requireContext().getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
        imm.hideSoftInputFromWindow(view?.windowToken, 0)
    }

    private fun shouldReturnToTv(): Boolean =
        requireActivity().intent.getBooleanExtra(LoginActivity.EXTRA_TV_ENTRY, false) ||
            requireContext().isTelevisionDevice()

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
