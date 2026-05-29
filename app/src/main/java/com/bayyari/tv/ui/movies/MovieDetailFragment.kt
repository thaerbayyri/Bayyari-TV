package com.bayyari.tv.ui.movies

import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentMovieDetailBinding
import com.bayyari.tv.util.collectStarted
import com.bayyari.tv.util.toast
import com.bumptech.glide.Glide
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class MovieDetailFragment : Fragment(R.layout.fragment_movie_detail) {

    private val viewModel: MovieDetailViewModel by viewModels()
    private var binding: FragmentMovieDetailBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentMovieDetailBinding.bind(view)
        val streamId = arguments?.getInt("streamId") ?: 0
        if (streamId != 0) viewModel.load(streamId)

        binding?.buttonBack?.setOnClickListener {
            findNavController().navigateUp()
        }

        binding?.buttonPlay?.setOnClickListener {
            startActivity(Intent(requireContext(), MoviePlayerActivity::class.java).apply {
                putExtra(MoviePlayerActivity.EXTRA_MOVIE_ID, streamId)
            })
        }

        binding?.buttonTrailer?.setOnClickListener {
            val trailer = viewModel.detail.value?.info?.youtubeTrailer.orEmpty()
            if (trailer.isNotBlank()) {
                startActivity(Intent(Intent.ACTION_VIEW, android.net.Uri.parse(trailer)))
            }
        }

        binding?.buttonFavorite?.setOnClickListener {
            viewModel.addFavorite(streamId)
            toast(getString(R.string.favorite_added))
        }

        viewLifecycleOwner.collectStarted(viewModel.movie) { movie ->
            if (movie == null) return@collectStarted
            binding?.textTitle?.text = movie.name
            binding?.textMeta?.text = listOfNotNull(
                movie.rating.takeIf { it > 0 }?.let { String.format("%.1f ★", it) },
                movie.containerExtension.takeIf { it.isNotBlank() }?.uppercase()
            ).joinToString("  •  ")

            val posterUrl = movie.poster.takeIf { it.isNotBlank() }
            if (posterUrl != null) {
                Glide.with(this)
                    .load(posterUrl)
                    .placeholder(R.drawable.ic_logo_tv)
                    .error(R.drawable.ic_logo_tv)
                    .centerCrop()
                    .into(binding?.imagePoster ?: return@collectStarted)
                Glide.with(this)
                    .load(posterUrl)
                    .placeholder(R.drawable.bg_hero_gradient)
                    .error(R.drawable.bg_hero_gradient)
                    .centerCrop()
                    .into(binding?.imageBackdrop ?: return@collectStarted)
            }
        }

        viewLifecycleOwner.collectStarted(viewModel.detail) { detail ->
            val info = detail?.info ?: return@collectStarted
            binding?.textPlot?.text = info.plot.orEmpty()
            binding?.textMeta?.text = listOfNotNull(
                info.releaseDate?.takeIf { it.isNotBlank() },
                info.genre?.takeIf { it.isNotBlank() },
                info.rating?.takeIf { it.isNotBlank() }?.let { "$it ★" }
            ).joinToString("  •  ")
            binding?.textDetailsValue?.text = listOfNotNull(
                info.cast?.takeIf { it.isNotBlank() }?.let { "Cast: $it" },
                info.director?.takeIf { it.isNotBlank() }?.let { "Director: $it" },
                info.country?.takeIf { it.isNotBlank() }?.let { "Country: $it" }
            ).joinToString("\n")

            // Show backdrop if available from detail
            val backdrop = info.backdropPath?.firstOrNull()?.takeIf { it.isNotBlank() }
                ?: info.movieImage?.takeIf { it.isNotBlank() }
            if (backdrop != null) {
                Glide.with(this)
                    .load(backdrop)
                    .placeholder(R.drawable.bg_hero_gradient)
                    .centerCrop()
                    .into(binding?.imageBackdrop ?: return@collectStarted)
            }
        }

        viewLifecycleOwner.collectStarted(viewModel.error) { msg ->
            if (!msg.isNullOrBlank()) {
                binding?.textPlot?.text = msg
            }
        }
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
