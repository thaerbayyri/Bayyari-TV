package com.bayyari.tv.ui.auth

import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentLoginBinding
import com.bayyari.tv.ui.MainActivity
import com.bayyari.tv.util.UiState
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

@AndroidEntryPoint
class LoginFragment : Fragment(R.layout.fragment_login) {

    private val viewModel: LoginViewModel by viewModels()
    private var binding: FragmentLoginBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentLoginBinding.bind(view)
        val b = binding ?: return

        b.buttonLogin.setOnClickListener {
            viewModel.login(
                serverUrl = b.editServer.text?.toString().orEmpty(),
                username = b.editUsername.text?.toString().orEmpty(),
                password = b.editPassword.text?.toString().orEmpty(),
                label = "BAYYARI-TV",
                remember = b.switchRemember.isChecked
            )
        }

        b.buttonAddM3u.setOnClickListener {
            parentFragmentManager.beginTransaction()
                .replace(R.id.login_container, AddServerFragment())
                .addToBackStack(null)
                .commit()
        }

        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.state.collectLatest { state ->
                when (state) {
                    is UiState.Loading -> {
                        b.buttonLogin.isEnabled = false
                        b.textServerInfo.text = getString(R.string.state_loading)
                    }
                    is UiState.Success -> {
                        b.buttonLogin.isEnabled = true
                        val server = state.data
                        val expires = if (server.expiresAtEpochSeconds > 0) server.expiresAtEpochSeconds.toString() else "-"
                        b.textServerInfo.text = getString(R.string.login_subscription_expires, expires) +
                            "\n" + getString(R.string.login_max_connections, server.maxConnections)
                        startActivity(Intent(requireContext(), MainActivity::class.java))
                        requireActivity().finish()
                    }
                    is UiState.Error -> {
                        b.buttonLogin.isEnabled = true
                        b.textServerInfo.text = state.message
                    }
                    UiState.Empty -> {
                        b.buttonLogin.isEnabled = true
                        b.textServerInfo.text = ""
                    }
                }
            }
        }
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
