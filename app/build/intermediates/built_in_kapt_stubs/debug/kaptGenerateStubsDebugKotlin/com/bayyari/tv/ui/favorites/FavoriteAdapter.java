package com.bayyari.tv.ui.favorites;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.bayyari.tv.databinding.ItemFavoriteBinding;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0002\u0015\u0016B\u0007\u00a2\u0006\u0004\b\u0004\u0010\u0005J\u001a\u0010\n\u001a\u00020\b2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0\u0007J\u001a\u0010\f\u001a\u00020\b2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b0\u0007J\u0018\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0018\u0010\u0012\u001a\u00020\b2\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0011H\u0016R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001c\u0010\t\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0017"}, d2 = {"Lcom/bayyari/tv/ui/favorites/FavoriteAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/bayyari/tv/ui/favorites/FavoriteItem;", "Lcom/bayyari/tv/ui/favorites/FavoriteAdapter$ViewHolder;", "<init>", "()V", "onClick", "Lkotlin/Function1;", "", "onLongClick", "setOnClickListener", "listener", "setOnLongClickListener", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", "position", "ViewHolder", "Diff", "app"})
public final class FavoriteAdapter extends androidx.recyclerview.widget.ListAdapter<com.bayyari.tv.ui.favorites.FavoriteItem, com.bayyari.tv.ui.favorites.FavoriteAdapter.ViewHolder> {
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function1<? super com.bayyari.tv.ui.favorites.FavoriteItem, kotlin.Unit> onClick;
    @org.jetbrains.annotations.Nullable()
    private kotlin.jvm.functions.Function1<? super com.bayyari.tv.ui.favorites.FavoriteItem, kotlin.Unit> onLongClick;
    
    public FavoriteAdapter() {
        super(null);
    }
    
    public final void setOnClickListener(@org.jetbrains.annotations.NotNull()
    kotlin.jvm.functions.Function1<? super com.bayyari.tv.ui.favorites.FavoriteItem, kotlin.Unit> listener) {
    }
    
    public final void setOnLongClickListener(@org.jetbrains.annotations.NotNull()
    kotlin.jvm.functions.Function1<? super com.bayyari.tv.ui.favorites.FavoriteItem, kotlin.Unit> listener) {
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.NotNull()
    public com.bayyari.tv.ui.favorites.FavoriteAdapter.ViewHolder onCreateViewHolder(@org.jetbrains.annotations.NotNull()
    android.view.ViewGroup parent, int viewType) {
        return null;
    }
    
    @java.lang.Override()
    public void onBindViewHolder(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.ui.favorites.FavoriteAdapter.ViewHolder holder, int position) {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u00c2\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016\u00a8\u0006\n"}, d2 = {"Lcom/bayyari/tv/ui/favorites/FavoriteAdapter$Diff;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/bayyari/tv/ui/favorites/FavoriteItem;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"})
    static final class Diff extends androidx.recyclerview.widget.DiffUtil.ItemCallback<com.bayyari.tv.ui.favorites.FavoriteItem> {
        @org.jetbrains.annotations.NotNull()
        public static final com.bayyari.tv.ui.favorites.FavoriteAdapter.Diff INSTANCE = null;
        
        private Diff() {
            super();
        }
        
        @java.lang.Override()
        public boolean areItemsTheSame(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.ui.favorites.FavoriteItem oldItem, @org.jetbrains.annotations.NotNull()
        com.bayyari.tv.ui.favorites.FavoriteItem newItem) {
            return false;
        }
        
        @java.lang.Override()
        public boolean areContentsTheSame(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.ui.favorites.FavoriteItem oldItem, @org.jetbrains.annotations.NotNull()
        com.bayyari.tv.ui.favorites.FavoriteItem newItem) {
            return false;
        }
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J:\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\t2\u0014\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000b2\u0014\u0010\f\u001a\u0010\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\u0007\u0018\u00010\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"}, d2 = {"Lcom/bayyari/tv/ui/favorites/FavoriteAdapter$ViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/bayyari/tv/databinding/ItemFavoriteBinding;", "<init>", "(Lcom/bayyari/tv/databinding/ItemFavoriteBinding;)V", "bind", "", "item", "Lcom/bayyari/tv/ui/favorites/FavoriteItem;", "onClick", "Lkotlin/Function1;", "onLongClick", "app"})
    public static final class ViewHolder extends androidx.recyclerview.widget.RecyclerView.ViewHolder {
        @org.jetbrains.annotations.NotNull()
        private final com.bayyari.tv.databinding.ItemFavoriteBinding binding = null;
        
        public ViewHolder(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.databinding.ItemFavoriteBinding binding) {
            super(null);
        }
        
        public final void bind(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.ui.favorites.FavoriteItem item, @org.jetbrains.annotations.Nullable()
        kotlin.jvm.functions.Function1<? super com.bayyari.tv.ui.favorites.FavoriteItem, kotlin.Unit> onClick, @org.jetbrains.annotations.Nullable()
        kotlin.jvm.functions.Function1<? super com.bayyari.tv.ui.favorites.FavoriteItem, kotlin.Unit> onLongClick) {
        }
    }
}