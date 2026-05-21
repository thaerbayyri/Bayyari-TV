package com.bayyari.tv.ui.common

import android.content.Context
import android.util.AttributeSet
import android.view.LayoutInflater
import android.widget.FrameLayout
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.databinding.ViewEpgOverlayBinding
import com.bayyari.tv.domain.model.EpgProgram
import com.bayyari.tv.ui.common.adapter.EpgProgramAdapter

class EpgOverlayView @JvmOverloads constructor(
    context: Context,
    attrs: AttributeSet? = null
) : FrameLayout(context, attrs) {

    private val binding = ViewEpgOverlayBinding.inflate(LayoutInflater.from(context), this, true)
    private val adapter = EpgProgramAdapter()

    init {
        binding.recyclerEpg.layoutManager = LinearLayoutManager(context)
        binding.recyclerEpg.adapter = adapter
    }

    fun submit(items: List<EpgProgram>) {
        adapter.submitList(items)
    }
}
