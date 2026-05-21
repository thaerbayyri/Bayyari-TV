package com.bayyari.tv.ui.live

import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import androidx.lifecycle.lifecycleScope
import com.bayyari.tv.R
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.EpgRepository
import com.bayyari.tv.databinding.FragmentEpgBinding
import dagger.hilt.android.AndroidEntryPoint
import kotlinx.coroutines.launch
import javax.inject.Inject

@AndroidEntryPoint
class EpgFragment : Fragment(R.layout.fragment_epg) {

    @Inject
    lateinit var authRepository: AuthRepository

    @Inject
    lateinit var epgRepository: EpgRepository

    private var binding: FragmentEpgBinding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentEpgBinding.bind(view)
        val streamId = arguments?.getInt("streamId") ?: 0
        if (streamId == 0) return
        viewLifecycleOwner.lifecycleScope.launch {
            val server = authRepository.getActiveServer() ?: return@launch
            val epg = epgRepository.refresh(server, streamId)
            binding?.epgOverlay?.submit(epg)
        }
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
