package com.bayyari.tv.ui.movies

import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.lifecycle.lifecycleScope
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentMovieDetailBinding
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

@AndroidEntryPoint
class MovieDetailFragment : Fragment(R.layout.fragment_movie_detail) {

    private val viewModel: MovieDetailViewModel by viewModels()
    private var binding: FragmentMovieDetailBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentMovieDetailBinding.bind(view)
        val streamId = arguments?.getInt("streamId") ?: 0
        if (streamId != 0) viewModel.load(streamId)

        binding?.buttonPlay?.setOnClickListener {
            startActivity(Intent(requireContext(), MoviePlayerActivity::class.java).apply {
                putExtra(MoviePlayerActivity.EXTRA_MOVIE_ID, streamId)
            })
        }

        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.movie.collectLatest { movie ->
                if (movie != null) {
                    binding?.textTitle?.text = movie.name
                }
            }
        }
        viewLifecycleOwner.lifecycleScope.launch {
            viewModel.detail.collectLatest { detail ->
                binding?.textPlot?.text = detail?.info?.plot.orEmpty()
            }
        }
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
