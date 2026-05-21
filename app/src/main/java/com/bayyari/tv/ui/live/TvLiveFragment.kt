package com.bayyari.tv.ui.live

import android.os.Bundle
import androidx.fragment.app.viewModels
import androidx.leanback.app.VerticalGridSupportFragment
import androidx.leanback.widget.ArrayObjectAdapter
import androidx.leanback.widget.VerticalGridPresenter
import com.bayyari.tv.ui.home.MediaCardPresenter
import dagger.hilt.android.AndroidEntryPoint
import androidx.lifecycle.lifecycleScope
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

@AndroidEntryPoint
class TvLiveFragment : VerticalGridSupportFragment() {

    private val viewModel: LiveViewModel by viewModels()

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)
        val presenter = VerticalGridPresenter().apply { numberOfColumns = 5 }
        setGridPresenter(presenter)

        val adapter = ArrayObjectAdapter(MediaCardPresenter())
        this.adapter = adapter

        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.channels.collectLatest { items ->
                adapter.setItems(items, null)
            }
        }

        viewModel.refresh()
    }
}
