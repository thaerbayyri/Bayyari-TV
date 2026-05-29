package com.bayyari.tv.ui.search;

import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.bayyari.tv.R;
import com.bayyari.tv.databinding.ItemSearchAllBinding;
import com.bayyari.tv.domain.model.Channel;
import com.bayyari.tv.domain.model.Movie;
import com.bayyari.tv.domain.model.Series;
import com.bumptech.glide.Glide;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0011\u0012B\u001b\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0004\b\u0007\u0010\bJ\u0018\u0010\t\u001a\u00020\u00032\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J\u0018\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\rH\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"}, d2 = {"Lcom/bayyari/tv/ui/search/SearchAllAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/bayyari/tv/ui/search/SearchItem;", "Lcom/bayyari/tv/ui/search/SearchAllAdapter$ViewHolder;", "onClick", "Lkotlin/Function1;", "", "<init>", "(Lkotlin/jvm/functions/Function1;)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", "position", "ViewHolder", "Diff", "app"})
public final class SearchAllAdapter extends androidx.recyclerview.widget.ListAdapter<com.bayyari.tv.ui.search.SearchItem, com.bayyari.tv.ui.search.SearchAllAdapter.ViewHolder> {
    @org.jetbrains.annotations.NotNull()
    private final kotlin.jvm.functions.Function1<com.bayyari.tv.ui.search.SearchItem, kotlin.Unit> onClick = null;
    
    public SearchAllAdapter(@org.jetbrains.annotations.NotNull()
    kotlin.jvm.functions.Function1<? super com.bayyari.tv.ui.search.SearchItem, kotlin.Unit> onClick) {
        super(null);
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.NotNull()
    public com.bayyari.tv.ui.search.SearchAllAdapter.ViewHolder onCreateViewHolder(@org.jetbrains.annotations.NotNull()
    android.view.ViewGroup parent, int viewType) {
        return null;
    }
    
    @java.lang.Override()
    public void onBindViewHolder(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.ui.search.SearchAllAdapter.ViewHolder holder, int position) {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u00c2\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016\u00a8\u0006\n"}, d2 = {"Lcom/bayyari/tv/ui/search/SearchAllAdapter$Diff;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/bayyari/tv/ui/search/SearchItem;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"})
    static final class Diff extends androidx.recyclerview.widget.DiffUtil.ItemCallback<com.bayyari.tv.ui.search.SearchItem> {
        @org.jetbrains.annotations.NotNull()
        public static final com.bayyari.tv.ui.search.SearchAllAdapter.Diff INSTANCE = null;
        
        private Diff() {
            super();
        }
        
        @java.lang.Override()
        public boolean areItemsTheSame(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.ui.search.SearchItem oldItem, @org.jetbrains.annotations.NotNull()
        com.bayyari.tv.ui.search.SearchItem newItem) {
            return false;
        }
        
        @java.lang.Override()
        public boolean areContentsTheSame(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.ui.search.SearchItem oldItem, @org.jetbrains.annotations.NotNull()
        com.bayyari.tv.ui.search.SearchItem newItem) {
            return false;
        }
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0004\b\b\u0010\tJ\u000e\u0010\n\u001a\u00020\u00072\u0006\u0010\u000b\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\f"}, d2 = {"Lcom/bayyari/tv/ui/search/SearchAllAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/bayyari/tv/databinding/ItemSearchAllBinding;", "onClick", "Lkotlin/Function1;", "Lcom/bayyari/tv/ui/search/SearchItem;", "", "<init>", "(Lcom/bayyari/tv/databinding/ItemSearchAllBinding;Lkotlin/jvm/functions/Function1;)V", "bind", "item", "app"})
    public static final class ViewHolder extends androidx.recyclerview.widget.RecyclerView.ViewHolder {
        @org.jetbrains.annotations.NotNull()
        private final com.bayyari.tv.databinding.ItemSearchAllBinding binding = null;
        @org.jetbrains.annotations.NotNull()
        private final kotlin.jvm.functions.Function1<com.bayyari.tv.ui.search.SearchItem, kotlin.Unit> onClick = null;
        
        public ViewHolder(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.databinding.ItemSearchAllBinding binding, @org.jetbrains.annotations.NotNull()
        kotlin.jvm.functions.Function1<? super com.bayyari.tv.ui.search.SearchItem, kotlin.Unit> onClick) {
            super(null);
        }
        
        public final void bind(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.ui.search.SearchItem item) {
        }
    }
}