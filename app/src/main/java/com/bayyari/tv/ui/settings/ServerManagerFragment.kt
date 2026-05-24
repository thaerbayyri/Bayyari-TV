package com.bayyari.tv.ui.settings

import android.os.Bundle
import android.view.View
import android.content.Intent
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.data.local.dao.ChannelDao
import com.bayyari.tv.data.local.dao.EpgDao
import com.bayyari.tv.data.local.dao.MovieDao
import com.bayyari.tv.data.local.dao.SeriesDao
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.WatchHistoryRepository
import com.bayyari.tv.databinding.FragmentServerManagerBinding
import com.bayyari.tv.domain.model.Server
import com.bayyari.tv.ui.auth.LoginActivity
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.launch
import kotlinx.coroutines.withContext
import javax.inject.Inject

@AndroidEntryPoint
class ServerManagerFragment : Fragment(R.layout.fragment_server_manager) {

    @Inject
    lateinit var authRepository: AuthRepository

    @Inject lateinit var channelDao: ChannelDao
    @Inject lateinit var movieDao: MovieDao
    @Inject lateinit var seriesDao: SeriesDao
    @Inject lateinit var epgDao: EpgDao
    @Inject lateinit var watchHistoryRepository: WatchHistoryRepository

    private var binding: FragmentServerManagerBinding? = null
    private lateinit var adapter: ServerAdapter

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentServerManagerBinding.bind(view)
        adapter = ServerAdapter(
            onClick = { server ->
                authRepository.setActiveServer(server.id)
                requireActivity().onBackPressedDispatcher.onBackPressed()
            },
            onDelete = { server -> confirmDelete(server) }
        )
        binding?.recyclerServers?.layoutManager = LinearLayoutManager(requireContext())
        binding?.recyclerServers?.adapter = adapter

        refreshServers()
    }

    private fun confirmDelete(server: Server) {
        AlertDialog.Builder(requireContext())
            .setTitle(R.string.settings_delete_playlist)
            .setMessage(getString(R.string.settings_delete_playlist_confirm, server.label))
            .setNegativeButton(R.string.action_cancel, null)
            .setPositiveButton(R.string.action_ok) { _, _ ->
                deleteServer(server)
            }
            .show()
    }

    private fun deleteServer(server: Server) {
        viewLifecycleOwner.lifecycleScope.launch {
            withContext(Dispatchers.IO) {
                channelDao.clearForServer(server.id)
                movieDao.clearForServer(server.id)
                seriesDao.clearForServer(server.id)
                epgDao.clearForServer(server.id)
                watchHistoryRepository.clear(server.id)
                authRepository.removeServer(server.id)
            }
            val remaining = authRepository.getServers()
            if (remaining.isEmpty()) {
                val intent = Intent(requireContext(), LoginActivity::class.java)
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
                startActivity(intent)
                requireActivity().finishAffinity()
            } else {
                refreshServers()
            }
        }
    }

    private fun refreshServers() {
        adapter.submitList(authRepository.getServers())
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
