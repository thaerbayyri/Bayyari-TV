package com.bayyari.tv.ui.common.adapter;

import android.view.LayoutInflater;
import android.view.ViewGroup;
import androidx.recyclerview.widget.DiffUtil;
import androidx.recyclerview.widget.ListAdapter;
import androidx.recyclerview.widget.RecyclerView;
import com.bayyari.tv.R;
import com.bayyari.tv.databinding.ItemChannelBinding;
import com.bayyari.tv.domain.model.Channel;
import com.bumptech.glide.Glide;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0006\u0018\u00002\u0012\u0012\u0004\u0012\u00020\u0002\u0012\b\u0012\u00060\u0003R\u00020\u00000\u0001:\u0002\u0014\u0015B;\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0014\b\u0002\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\b\b\u0002\u0010\b\u001a\u00020\t\u00a2\u0006\u0004\b\n\u0010\u000bJ\u001c\u0010\f\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u001c\u0010\u0011\u001a\u00020\u00062\n\u0010\u0012\u001a\u00060\u0003R\u00020\u00002\u0006\u0010\u0013\u001a\u00020\u0010H\u0016R\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"}, d2 = {"Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;", "Landroidx/recyclerview/widget/ListAdapter;", "Lcom/bayyari/tv/domain/model/Channel;", "Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;", "onClick", "Lkotlin/Function1;", "", "onLongClick", "compact", "", "<init>", "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Z)V", "onCreateViewHolder", "parent", "Landroid/view/ViewGroup;", "viewType", "", "onBindViewHolder", "holder", "position", "ChannelViewHolder", "Diff", "app"})
public final class ChannelAdapter extends androidx.recyclerview.widget.ListAdapter<com.bayyari.tv.domain.model.Channel, com.bayyari.tv.ui.common.adapter.ChannelAdapter.ChannelViewHolder> {
    @org.jetbrains.annotations.NotNull()
    private final kotlin.jvm.functions.Function1<com.bayyari.tv.domain.model.Channel, kotlin.Unit> onClick = null;
    @org.jetbrains.annotations.NotNull()
    private final kotlin.jvm.functions.Function1<com.bayyari.tv.domain.model.Channel, kotlin.Unit> onLongClick = null;
    private final boolean compact = false;
    
    public ChannelAdapter(@org.jetbrains.annotations.NotNull()
    kotlin.jvm.functions.Function1<? super com.bayyari.tv.domain.model.Channel, kotlin.Unit> onClick, @org.jetbrains.annotations.NotNull()
    kotlin.jvm.functions.Function1<? super com.bayyari.tv.domain.model.Channel, kotlin.Unit> onLongClick, boolean compact) {
        super(null);
    }
    
    @java.lang.Override()
    @org.jetbrains.annotations.NotNull()
    public com.bayyari.tv.ui.common.adapter.ChannelAdapter.ChannelViewHolder onCreateViewHolder(@org.jetbrains.annotations.NotNull()
    android.view.ViewGroup parent, int viewType) {
        return null;
    }
    
    @java.lang.Override()
    public void onBindViewHolder(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.ui.common.adapter.ChannelAdapter.ChannelViewHolder holder, int position) {
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\u000e\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\n"}, d2 = {"Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$ChannelViewHolder;", "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;", "binding", "Lcom/bayyari/tv/databinding/ItemChannelBinding;", "<init>", "(Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter;Lcom/bayyari/tv/databinding/ItemChannelBinding;)V", "bind", "", "item", "Lcom/bayyari/tv/domain/model/Channel;", "app"})
    public final class ChannelViewHolder extends androidx.recyclerview.widget.RecyclerView.ViewHolder {
        @org.jetbrains.annotations.NotNull()
        private final com.bayyari.tv.databinding.ItemChannelBinding binding = null;
        
        public ChannelViewHolder(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.databinding.ItemChannelBinding binding) {
            super(null);
        }
        
        public final void bind(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.domain.model.Channel item) {
        }
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0004\b\u00c2\u0002\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0003\u0010\u0004J\u0018\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016J\u0018\u0010\t\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00022\u0006\u0010\b\u001a\u00020\u0002H\u0016\u00a8\u0006\n"}, d2 = {"Lcom/bayyari/tv/ui/common/adapter/ChannelAdapter$Diff;", "Landroidx/recyclerview/widget/DiffUtil$ItemCallback;", "Lcom/bayyari/tv/domain/model/Channel;", "<init>", "()V", "areItemsTheSame", "", "oldItem", "newItem", "areContentsTheSame", "app"})
    static final class Diff extends androidx.recyclerview.widget.DiffUtil.ItemCallback<com.bayyari.tv.domain.model.Channel> {
        @org.jetbrains.annotations.NotNull()
        public static final com.bayyari.tv.ui.common.adapter.ChannelAdapter.Diff INSTANCE = null;
        
        private Diff() {
            super();
        }
        
        @java.lang.Override()
        public boolean areItemsTheSame(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.domain.model.Channel oldItem, @org.jetbrains.annotations.NotNull()
        com.bayyari.tv.domain.model.Channel newItem) {
            return false;
        }
        
        @java.lang.Override()
        public boolean areContentsTheSame(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.domain.model.Channel oldItem, @org.jetbrains.annotations.NotNull()
        com.bayyari.tv.domain.model.Channel newItem) {
            return false;
        }
    }
}