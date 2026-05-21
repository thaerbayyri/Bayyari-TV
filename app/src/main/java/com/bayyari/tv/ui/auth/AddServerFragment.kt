package com.bayyari.tv.ui.auth

import android.content.Intent
import android.os.Bundle
import android.view.View
import android.widget.Toast
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import com.bayyari.tv.R
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.databinding.FragmentAddServerBinding
import com.bayyari.tv.ui.MainActivity
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.launch
import javax.inject.Inject

@AndroidEntryPoint
class AddServerFragment : Fragment(R.layout.fragment_add_server) {

    @Inject
    lateinit var authRepository: AuthRepository

    private var binding: FragmentAddServerBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentAddServerBinding.bind(view)
        val b = binding ?: return

        b.buttonSave.setOnClickListener {
            val label = b.editLabel.text?.toString().orEmpty().trim()
            val url = b.editM3u.text?.toString().orEmpty().trim()
            if (url.isBlank()) {
                Toast.makeText(requireContext(), R.string.login_error_server_url, Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }
            if (!url.startsWith("http://", ignoreCase = true) && !url.startsWith("https://", ignoreCase = true)) {
                Toast.makeText(requireContext(), R.string.login_error_server_url, Toast.LENGTH_SHORT).show()
                return@setOnClickListener
            }
            b.buttonSave.isEnabled = false
            viewLifecycleOwner.lifecycleScope.launch {
                runCatching {
                    authRepository.addM3uServer(label, url)
                }.onSuccess {
                    startActivity(Intent(requireContext(), MainActivity::class.java))
                    requireActivity().finish()
                }.onFailure { t ->
                    b.buttonSave.isEnabled = true
                    Toast.makeText(requireContext(), t.message ?: getString(R.string.state_error_generic), Toast.LENGTH_LONG).show()
                }
            }
        }
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
