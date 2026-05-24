package com.bayyari.tv.ui.live

import android.content.Intent
import android.content.Context
import android.os.Bundle
import android.view.inputmethod.InputMethodManager
import android.view.View
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.media3.exoplayer.ExoPlayer
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentLiveBinding
import com.bayyari.tv.domain.model.Channel
import com.bayyari.tv.ui.common.adapter.CategoryAdapter
import com.bayyari.tv.ui.common.adapter.ChannelRowAdapter
import com.bayyari.tv.util.EncryptedPrefs
import com.bayyari.tv.util.StreamUrlBuilder
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint
import androidx.media3.exoplayer.LoadControl
import javax.inject.Inject

@AndroidEntryPoint
class LiveFragment : Fragment(R.layout.fragment_live) {

    private val viewModel: LiveViewModel by viewModels()
    private var binding: FragmentLiveBinding? = null

    @Inject lateinit var streamUrlBuilder: StreamUrlBuilder
    @Inject lateinit var prefs: EncryptedPrefs
    @Inject lateinit var loadControl: LoadControl

    private var selectedChannel: Channel? = null
    private var previewPlayer: ExoPlayer? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentLiveBinding.bind(view)
        val b = binding ?: return

        val categoryAdapter = CategoryAdapter(
            onClick = { category -> viewModel.selectCategory(category.id) },
            onLongClick = { category -> showCategoryActions(category) }
        )
        val channelAdapter = ChannelRowAdapter(
            onClick = { channel -> renderPreview(channel) },
            onLongClick = { channel ->
                AlertDialog.Builder(requireContext())
                    .setItems(
                        arrayOf(
                            getString(R.string.live_add_favorite),
                            getString(R.string.live_epg),
                            getString(R.string.live_catchup),
                            getString(R.string.live_info)
                        )
                    ) { _, which ->
                        when (which) {
                            0 -> viewModel.addFavorite(channel.streamId)
                            1 -> navigateToEpg(channel.streamId)
                            2 -> navigateToCatchup(channel.streamId)
                            3 -> showChannelInfo(channel.name)
                        }
                    }
                    .show()
            }
        )

        b.recyclerCategories.layoutManager = LinearLayoutManager(requireContext())
        b.recyclerCategories.adapter = categoryAdapter

        b.recyclerChannels.layoutManager = LinearLayoutManager(requireContext())
        b.recyclerChannels.adapter = channelAdapter

        previewPlayer = ExoPlayer.Builder(requireContext())
            .setLoadControl(loadControl)
            .build()
        b.previewPlayerView.player = previewPlayer
        b.previewCard.setOnClickListener {
            selectedChannel?.let { openSelectedChannel(it) }
        }
        b.previewPlayerView.setOnClickListener {
            selectedChannel?.let { openSelectedChannel(it) }
        }

        b.buttonCatchUp.setOnClickListener {
            selectedChannel?.let { navigateToCatchup(it.streamId) }
        }
        b.buttonEpg.setOnClickListener {
            selectedChannel?.let { navigateToEpg(it.streamId) }
        }
        b.buttonFavorite.setOnClickListener {
            selectedChannel?.let {
                viewModel.addFavorite(it.streamId)
                Toast.makeText(requireContext(), R.string.live_add_favorite, Toast.LENGTH_SHORT).show()
            }
        }
        b.buttonAddFav.setOnClickListener {
            selectedChannel?.let { openSelectedChannel(it) }
        }

        renderPreview(null)

        b.searchLive.setOnQueryTextListener(object : androidx.appcompat.widget.SearchView.OnQueryTextListener {
            override fun onQueryTextSubmit(query: String?): Boolean {
                viewModel.setQuery(query.orEmpty())
                b.searchLive.clearFocus()
                return true
            }
            override fun onQueryTextChange(newText: String?): Boolean {
                viewModel.setQuery(newText.orEmpty())
                return true
            }
        })
        b.buttonLiveSearch.setOnClickListener {
            val showSearch = b.searchLive.visibility != View.VISIBLE
            b.searchLive.visibility = if (showSearch) View.VISIBLE else View.GONE
            if (showSearch) {
                b.searchLive.requestFocus()
                b.searchLive.post {
                    val imm = requireContext().getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
                    imm.showSoftInput(b.searchLive.findFocus(), InputMethodManager.SHOW_IMPLICIT)
                }
            } else {
                b.searchLive.setQuery("", false)
                b.searchLive.clearFocus()
                val imm = requireContext().getSystemService(Context.INPUT_METHOD_SERVICE) as InputMethodManager
                imm.hideSoftInputFromWindow(b.searchLive.windowToken, 0)
            }
        }
        b.buttonLiveSort.setOnClickListener { showSortDialog() }

        viewLifecycleOwner.collectStarted(viewModel.selectedCategoryId) { id ->
            categoryAdapter.setSelected(id ?: "")
        }

        viewLifecycleOwner.collectStarted(viewModel.categories) { cats ->
            categoryAdapter.submitList(cats)
        }

        viewLifecycleOwner.collectStarted(viewModel.channels) { channels ->
            channelAdapter.submitList(channels)
            b.textLiveCount.text = "All (${channels.size})"
            val nextPreview = selectedChannel?.takeIf { sel ->
                channels.any { it.streamId == sel.streamId && it.serverId == sel.serverId }
            } ?: channels.firstOrNull()
            if (nextPreview != null && selectedChannel == null) {
                renderPreview(nextPreview)
            }
        }

        viewModel.refresh()
    }

    override fun onResume() {
        super.onResume()
        viewModel.reloadPreferences()
    }

    override fun onPause() {
        previewPlayer?.pause()
        super.onPause()
    }

    override fun onDestroyView() {
        previewPlayer?.release()
        previewPlayer = null
        binding = null
        super.onDestroyView()
    }

    private fun navigateToCatchup(streamId: Int) {
        val args = Bundle().apply { putInt("streamId", streamId) }
        findNavController().navigate(R.id.action_live_to_catchup, args)
    }

    private fun navigateToEpg(streamId: Int) {
        val args = Bundle().apply { putInt("streamId", streamId) }
        findNavController().navigate(R.id.action_live_to_epg, args)
    }

    private fun showChannelInfo(name: String) {
        AlertDialog.Builder(requireContext())
            .setTitle(getString(R.string.live_info))
            .setMessage(name)
            .setPositiveButton(R.string.action_ok, null)
            .show()
    }

    private fun showCategoryActions(category: com.bayyari.tv.domain.model.Category) {
        if (category.id.isBlank()) return
        AlertDialog.Builder(requireContext())
            .setTitle(category.name)
            .setItems(arrayOf(getString(R.string.live_hide_category))) { _, which ->
                if (which == 0) confirmHideCategory(category)
            }
            .show()
    }

    private fun confirmHideCategory(category: com.bayyari.tv.domain.model.Category) {
        AlertDialog.Builder(requireContext())
            .setTitle(R.string.live_hide_category)
            .setMessage(getString(R.string.live_hide_category_confirm, category.name))
            .setNegativeButton(R.string.action_cancel, null)
            .setPositiveButton(R.string.action_ok) { _, _ ->
                viewModel.hideCategory(category.id)
                Toast.makeText(requireContext(), R.string.live_hidden_category_done, Toast.LENGTH_SHORT).show()
            }
            .show()
    }

    private fun showSortDialog() {
        val modes = listOf(
            LiveSortMode.NameAsc,
            LiveSortMode.NameDesc,
            LiveSortMode.Newest,
            LiveSortMode.CatchUp
        )
        AlertDialog.Builder(requireContext())
            .setTitle(R.string.live_sort)
            .setSingleChoiceItems(
                resources.getStringArray(R.array.live_sort_entries),
                modes.indexOf(viewModel.getSortMode())
            ) { dialog, which ->
                viewModel.setSortMode(modes[which])
                dialog.dismiss()
            }
            .show()
    }

    private fun renderPreview(channel: Channel?) {
        selectedChannel = channel
        val b = binding ?: return
        val player = previewPlayer ?: return

        if (channel == null) {
            b.textPreviewTitle.text = getString(R.string.nav_live)
            b.textPreviewMeta.text = getString(R.string.live_unlock_hint)
            b.buttonCatchUp.visibility = View.GONE
            b.buttonEpg.visibility = View.GONE
            b.buttonFavorite.visibility = View.GONE
            b.buttonAddFav.visibility = View.GONE
            player.stop()
            return
        }

        b.textPreviewTitle.text = channel.name
        b.textPreviewMeta.text = channel.categoryName.ifBlank { channel.categoryId }
        b.buttonCatchUp.visibility = if (channel.supportsCatchUp) View.VISIBLE else View.GONE
        b.buttonEpg.visibility = View.VISIBLE
        b.buttonFavorite.visibility = View.VISIBLE
        b.buttonAddFav.visibility = View.VISIBLE

        (b.recyclerChannels.adapter as? ChannelRowAdapter)?.setSelected(channel.streamId)

        val url = buildLiveUrl(channel)
        if (url.isBlank()) {
            player.stop()
            return
        }
        player.stop()
        player.setMediaItem(androidx.media3.common.MediaItem.fromUri(url))
        player.prepare()
        player.playWhenReady = true
        player.play()
    }

    private fun openSelectedChannel(channel: Channel) {
        val url = buildLiveUrl(channel)
        if (url.isBlank()) return
        previewPlayer?.pause()
        previewPlayer?.stop()
        startActivity(Intent(requireContext(), LivePlayerActivity::class.java).apply {
            putExtra(LivePlayerActivity.EXTRA_STREAM_URL, url)
            putExtra(LivePlayerActivity.EXTRA_CHANNEL_NAME, channel.name)
            putExtra(LivePlayerActivity.EXTRA_STREAM_ID, channel.streamId)
        })
    }

    private fun buildLiveUrl(channel: Channel): String =
        viewModel.buildLiveUrl(channel, prefs.getStreamFormat())
}
