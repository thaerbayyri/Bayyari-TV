package com.bayyari.tv.ui.settings

import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.databinding.FragmentServerManagerBinding
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class ServerManagerFragment : Fragment(R.layout.fragment_server_manager) {

    @Inject
    lateinit var authRepository: AuthRepository

    private var binding: FragmentServerManagerBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentServerManagerBinding.bind(view)
        val adapter = ServerAdapter { server ->
            authRepository.setActiveServer(server.id)
            requireActivity().onBackPressedDispatcher.onBackPressed()
        }
        binding?.recyclerServers?.layoutManager = LinearLayoutManager(requireContext())
        binding?.recyclerServers?.adapter = adapter

        adapter.submitList(authRepository.getServers())
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
