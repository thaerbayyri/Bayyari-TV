package com.bayyari.tv.ui.catchup

import android.app.DatePickerDialog
import android.content.Intent
import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.FragmentCatchupBinding
import com.bayyari.tv.ui.common.adapter.EpgProgramAdapter
import com.bayyari.tv.util.UiState
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint
import java.util.Calendar

@AndroidEntryPoint
class CatchUpFragment : Fragment(R.layout.fragment_catchup) {

    private val viewModel: CatchUpViewModel by viewModels()
    private var binding: FragmentCatchupBinding? = null
    private var selectedDate = Calendar.getInstance()
    private var allPrograms = emptyList<com.bayyari.tv.domain.model.EpgProgram>()

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {
        binding = FragmentCatchupBinding.bind(view)
        val b = binding ?: return

        val adapter = EpgProgramAdapter { program ->
            startActivity(Intent(requireContext(), CatchUpPlayerActivity::class.java).apply {
                putExtra(CatchUpPlayerActivity.EXTRA_STREAM_ID, program.streamId)
                putExtra(CatchUpPlayerActivity.EXTRA_START_MS, program.startMs)
                putExtra(CatchUpPlayerActivity.EXTRA_DURATION_MIN, (program.durationMs / 60000L).toInt())
            })
        }
        b.recyclerCatchUp.layoutManager = LinearLayoutManager(requireContext())
        b.recyclerCatchUp.adapter = adapter

        val streamId = arguments?.getInt("streamId") ?: 0
        if (streamId != 0) viewModel.load(streamId)

        b.buttonPickDate.setOnClickListener {
            val now = Calendar.getInstance()
            DatePickerDialog(
                requireContext(),
                { _, year, month, day ->
                    selectedDate.set(year, month, day)
                    applyFilter(adapter)
                },
                now.get(Calendar.YEAR),
                now.get(Calendar.MONTH),
                now.get(Calendar.DAY_OF_MONTH)
            ).show()
        }

        viewLifecycleOwner.collectStarted(viewModel.state) { state ->
            when (state) {
                is UiState.Success -> {
                    allPrograms = state.data
                    applyFilter(adapter)
                }
                else -> Unit
            }
        }
    }

    private fun applyFilter(adapter: EpgProgramAdapter) {
        val filtered = allPrograms.filter { program ->
            val cal = Calendar.getInstance().apply { timeInMillis = program.startMs }
            cal.get(Calendar.YEAR) == selectedDate.get(Calendar.YEAR) &&
                cal.get(Calendar.DAY_OF_YEAR) == selectedDate.get(Calendar.DAY_OF_YEAR)
        }
        adapter.submitList(filtered)
    }

    override fun onDestroyView() {
        binding = null
        super.onDestroyView()
    }
}
