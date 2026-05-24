package com.bayyari.tv.ui.common.adapter

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.recyclerview.widget.DiffUtil
import androidx.recyclerview.widget.ListAdapter
import androidx.recyclerview.widget.RecyclerView
import com.bayyari.tv.databinding.ItemCategoryBinding
import com.bayyari.tv.domain.model.Category

class CategoryAdapter(
    private val onClick: (Category) -> Unit = {},
    private val onLongClick: (Category) -> Unit = {}
) : ListAdapter<Category, CategoryAdapter.CategoryViewHolder>(Diff) {

    private var selectedId: String? = ""

    fun setSelected(id: String?) {
        if (selectedId == id) return
        selectedId = id
        notifyDataSetChanged()
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): CategoryViewHolder {
        val binding = ItemCategoryBinding.inflate(LayoutInflater.from(parent.context), parent, false)
        return CategoryViewHolder(binding)
    }

    override fun onBindViewHolder(holder: CategoryViewHolder, position: Int) {
        holder.bind(getItem(position))
    }

    inner class CategoryViewHolder(
        private val binding: ItemCategoryBinding
    ) : RecyclerView.ViewHolder(binding.root) {

        fun bind(item: Category) {
            binding.textCategory.text = item.name
            val isSelected = item.id == (selectedId ?: "")
            binding.accentBar.visibility = if (isSelected) View.VISIBLE else View.INVISIBLE
            val ctx = binding.root.context
            binding.textCategory.setTextColor(
                if (isSelected) ctx.getColor(com.bayyari.tv.R.color.colorPrimary)
                else ctx.getColor(com.bayyari.tv.R.color.colorTextSecondary)
            )
            if (item.count > 0) {
                binding.textCount.text = item.count.toString()
                binding.textCount.visibility = View.VISIBLE
            } else {
                binding.textCount.visibility = View.GONE
            }
            binding.root.setOnClickListener { onClick(item) }
            binding.root.setOnLongClickListener {
                onLongClick(item)
                true
            }
        }
    }

    private object Diff : DiffUtil.ItemCallback<Category>() {
        override fun areItemsTheSame(oldItem: Category, newItem: Category): Boolean =
            oldItem.id == newItem.id && oldItem.kind == newItem.kind

        override fun areContentsTheSame(oldItem: Category, newItem: Category): Boolean =
            oldItem == newItem
    }
}
