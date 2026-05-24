#!/usr/bin/env python3
"""
Feature scaffold generator for BAYYARI Player (single-module, Views + ViewBinding).

Usage:
    python generate_feature.py <feature-name> --package <pkg> --path <src-root>

Example:
    python generate_feature.py favorites \
        --package com.bayyari.tv \
        --path "app/src/main/java/com/bayyari/tv"

Generates:
    ui/<feature>/  <Pascal>Fragment.kt
                   <Pascal>ViewModel.kt
                   <Pascal>Adapter.kt
"""

import os
import sys
import argparse
from pathlib import Path


def pascal(name: str) -> str:
    return "".join(w.capitalize() for w in name.replace("-", "_").split("_"))


def camel(name: str) -> str:
    p = pascal(name)
    return p[0].lower() + p[1:] if p else ""


def write(path: Path, content: str):
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text(content, encoding="utf-8")
    print(f"  created  {path}")


# ── Templates ──────────────────────────────────────────────────────────────────

def fragment(feature: str, pkg: str) -> str:
    P = pascal(feature)
    return f"""\
package {pkg}.ui.{feature}

import android.os.Bundle
import android.view.View
import androidx.fragment.app.Fragment
import androidx.fragment.app.viewModels
import androidx.recyclerview.widget.LinearLayoutManager
import com.bayyari.tv.R
import com.bayyari.tv.databinding.Fragment{P}Binding
import com.bayyari.tv.util.collectStarted
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class {P}Fragment : Fragment(R.layout.fragment_{feature}) {{

    private val viewModel: {P}ViewModel by viewModels()
    private var binding: Fragment{P}Binding? = null

    override fun onViewCreated(view: View, savedInstanceState: Bundle?) {{
        binding = Fragment{P}Binding.bind(view)
        val b = binding ?: return

        val adapter = {P}Adapter(onClick = {{ item -> /* TODO handle click */ }})
        b.recycler{P}.layoutManager = LinearLayoutManager(requireContext())
        b.recycler{P}.adapter = adapter

        viewLifecycleOwner.collectStarted(viewModel.items) {{ adapter.submitList(it) }}

        viewModel.refresh()
    }}

    override fun onDestroyView() {{
        binding = null
        super.onDestroyView()
    }}
}}
"""


def viewmodel(feature: str, pkg: str) -> str:
    P = pascal(feature)
    return f"""\
package {pkg}.ui.{feature}

import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.SharingStarted
import kotlinx.coroutines.flow.StateFlow
import kotlinx.coroutines.flow.stateIn
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class {P}ViewModel @Inject constructor(
    // TODO: inject repositories here
) : ViewModel() {{

    // Replace String with the actual domain model
    val items: StateFlow<List<String>> = MutableStateFlow(emptyList<String>())
        .stateIn(viewModelScope, SharingStarted.WhileSubscribed(5_000), emptyList())

    fun refresh() {{
        viewModelScope.launch {{
            // TODO: call repository.refresh(server) here
        }}
    }}
}}
"""


def adapter(feature: str, pkg: str) -> str:
    P = pascal(feature)
    return f"""\
package {pkg}.ui.{feature}

import android.view.LayoutInflater
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.databinding.Item{P}Binding

// TODO: replace String with your actual item model
class {P}Adapter(
    private val onClick: (String) -> Unit,
) : ListAdapter<String, {P}Adapter.ViewHolder>(DiffCallback()) {{

    inner class ViewHolder(private val binding: Item{P}Binding) :
        RecyclerView.ViewHolder(binding.root) {{

        fun bind(item: String) {{
            // TODO: bind item fields to binding views
            binding.root.setOnClickListener {{ onClick(item) }}
        }}
    }}

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {{
        val binding = Item{P}Binding.inflate(
            LayoutInflater.from(parent.context), parent, false
        )
        return ViewHolder(binding)
    }}

    override fun onBindViewHolder(holder: ViewHolder, position: Int) =
        holder.bind(getItem(position))

    class DiffCallback : DiffUtil.ItemCallback<String>() {{
        override fun areItemsTheSame(old: String, new: String) = old == new
        override fun areContentsTheSame(old: String, new: String) = old == new
    }}
}}
"""


# ── Main ───────────────────────────────────────────────────────────────────────

def main():
    parser = argparse.ArgumentParser(description="Generate BAYYARI feature scaffold")
    parser.add_argument("name", help="Feature name (snake_case or kebab-case, e.g. 'favorites')")
    parser.add_argument("--package", required=True, help="Base package, e.g. com.bayyari.tv")
    parser.add_argument("--path", required=True, help="Source root, e.g. app/src/main/java/com/bayyari/tv")
    args = parser.parse_args()

    feature = args.name.replace("-", "_").lower()
    pkg = args.package
    src = Path(args.path).resolve()
    P = pascal(feature)

    if not src.exists():
        print(f"ERROR: path does not exist: {src}", file=sys.stderr)
        sys.exit(1)

    ui_dir = src / "ui" / feature

    print(f"\nGenerating {P} feature scaffold in {ui_dir}\n")
    write(ui_dir / f"{P}Fragment.kt",   fragment(feature, pkg))
    write(ui_dir / f"{P}ViewModel.kt",  viewmodel(feature, pkg))
    write(ui_dir / f"{P}Adapter.kt",    adapter(feature, pkg))

    print(f"""
Done. Manual steps still required:
  1. Add  res/layout/fragment_{feature}.xml  (with a RecyclerView id: recycler{P})
  2. Add  res/layout/item_{feature}.xml      (item card layout)
  3. Register the fragment in  res/navigation/nav_graph.xml
  4. Add navigation actions pointing to {P}Fragment
  5. If a new repository is needed: add DAO + Entity + Repository, bind in di/DatabaseModule.kt
""")


if __name__ == "__main__":
    main()
