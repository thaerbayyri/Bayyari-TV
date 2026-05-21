package com.bayyari.tv.ui.live

import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.data.local.dao.FavoriteDao
import com.bayyari.tv.data.local.entities.FavoriteEntity
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.databinding.FragmentLiveBinding
import com.bayyari.tv.ui.common.adapter.CategoryAdapter
import com.bayyari.tv.ui.common.adapter.ChannelAdapter
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch
import javax.inject.Inject

@AndroidEntryPoint
class LiveFragment : Fragment(R.layout.fragment_live) {

    private val viewModel: LiveViewModel by viewModels()
    private var binding: FragmentLiveBinding? = null

    @Inject
    lateinit var favoriteDao: FavoriteDao

    @Inject
    lateinit var authRepository: AuthRepository

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentLiveBinding.bind(view)
        val b = binding ?: return

        val categoryAdapter = CategoryAdapter { category ->
            viewModel.selectCategory(category.id)
        }
        val channelAdapter = ChannelAdapter(
            onClick = { channel ->
                startActivity(Intent(requireContext(), LivePlayerActivity::class.java).apply {
                    putExtra(LivePlayerActivity.EXTRA_STREAM_ID, channel.streamId)
                })
            },
            onLongClick = { channel ->
                val options = arrayOf(
                    getString(R.string.live_add_favorite),
                    getString(R.string.live_catchup),
                    getString(R.string.live_info)
                )
                AlertDialog.Builder(requireContext())
                    .setItems(options) { _, which ->
                        when (which) {
                            0 -> addFavorite(channel.streamId)
                            1 -> navigateToCatchup(channel.streamId)
                            2 -> showChannelInfo(channel.name)
                        }
                    }
                    .show()
            }
        )

        b.recyclerCategories.layoutManager = LinearLayoutManager(requireContext())
        b.recyclerCategories.adapter = categoryAdapter

        b.recyclerChannels.layoutManager = LinearLayoutManager(requireContext())
        b.recyclerChannels.adapter = channelAdapter

        b.searchLive.setOnQueryTextListener(object : androidx.appcompat.widget.SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(query: String?): Boolean {
                viewModel.setQuery(query.orEmpty())
                return true
            }

            override fun onQueryTextChange(newText: String?): Boolean {
                viewModel.setQuery(newText.orEmpty())
                return true
            }
        })

        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.categories.collectLatest { categoryAdapter.submitList(it) }
        }
        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.channels.collectLatest { channelAdapter.submitList(it) }
        }

        viewModel.refresh()
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }

    private fun addFavorite(streamId: Int) {
        val serverId = authRepository.getActiveServer()?.id ?: return
        viewLifecycleOwner.lifecycleScope.launch {
            favoriteDao.upsert(
                FavoriteEntity(
                    contentId = streamId,
                    contentType = "live",
                    serverId = serverId,
                    addedAt = System.currentTimeMillis()
                )
            )
        }
    }

    private fun navigateToCatchup(streamId: Int) {
        val args = Bundle().apply { putInt("streamId", streamId) }
        findNavController().navigate(R.id.action_live_to_catchup, args)
    }

    private fun showChannelInfo(name: String) {
        AlertDialog.Builder(requireContext())
            .setTitle(getString(R.string.live_info))
            .setMessage(name)
            .setPositiveButton(R.string.action_ok, null)
            .show()
    }
}
