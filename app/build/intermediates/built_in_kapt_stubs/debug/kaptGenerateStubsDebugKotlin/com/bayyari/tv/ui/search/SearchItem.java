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

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001:\u0003\u0004\u0005\u0006B\t\b\u0004\u00a2\u0006\u0004\b\u0002\u0010\u0003\u0082\u0001\u0003\u0007\b\t\u00a8\u0006\n"}, d2 = {"Lcom/bayyari/tv/ui/search/SearchItem;", "", "<init>", "()V", "Live", "MovieResult", "SeriesResult", "Lcom/bayyari/tv/ui/search/SearchItem$Live;", "Lcom/bayyari/tv/ui/search/SearchItem$MovieResult;", "Lcom/bayyari/tv/ui/search/SearchItem$SeriesResult;", "app"})
public abstract class SearchItem {
    
    private SearchItem() {
        super();
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u00a8\u0006\u0012"}, d2 = {"Lcom/bayyari/tv/ui/search/SearchItem$Live;", "Lcom/bayyari/tv/ui/search/SearchItem;", "channel", "Lcom/bayyari/tv/domain/model/Channel;", "<init>", "(Lcom/bayyari/tv/domain/model/Channel;)V", "getChannel", "()Lcom/bayyari/tv/domain/model/Channel;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"})
    public static final class Live extends com.bayyari.tv.ui.search.SearchItem {
        @org.jetbrains.annotations.NotNull()
        private final com.bayyari.tv.domain.model.Channel channel = null;
        
        public Live(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.domain.model.Channel channel) {
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.domain.model.Channel getChannel() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.domain.model.Channel component1() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.ui.search.SearchItem.Live copy(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.domain.model.Channel channel) {
            return null;
        }
        
        @java.lang.Override()
        public boolean equals(@org.jetbrains.annotations.Nullable()
        java.lang.Object other) {
            return false;
        }
        
        @java.lang.Override()
        public int hashCode() {
            return 0;
        }
        
        @java.lang.Override()
        @org.jetbrains.annotations.NotNull()
        public java.lang.String toString() {
            return null;
        }
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u00a8\u0006\u0012"}, d2 = {"Lcom/bayyari/tv/ui/search/SearchItem$MovieResult;", "Lcom/bayyari/tv/ui/search/SearchItem;", "movie", "Lcom/bayyari/tv/domain/model/Movie;", "<init>", "(Lcom/bayyari/tv/domain/model/Movie;)V", "getMovie", "()Lcom/bayyari/tv/domain/model/Movie;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"})
    public static final class MovieResult extends com.bayyari.tv.ui.search.SearchItem {
        @org.jetbrains.annotations.NotNull()
        private final com.bayyari.tv.domain.model.Movie movie = null;
        
        public MovieResult(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.domain.model.Movie movie) {
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.domain.model.Movie getMovie() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.domain.model.Movie component1() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.ui.search.SearchItem.MovieResult copy(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.domain.model.Movie movie) {
            return null;
        }
        
        @java.lang.Override()
        public boolean equals(@org.jetbrains.annotations.Nullable()
        java.lang.Object other) {
            return false;
        }
        
        @java.lang.Override()
        public int hashCode() {
            return 0;
        }
        
        @java.lang.Override()
        @org.jetbrains.annotations.NotNull()
        public java.lang.String toString() {
            return null;
        }
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0086\b\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\b\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\t\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u00d6\u0003J\t\u0010\u000e\u001a\u00020\u000fH\u00d6\u0001J\t\u0010\u0010\u001a\u00020\u0011H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007\u00a8\u0006\u0012"}, d2 = {"Lcom/bayyari/tv/ui/search/SearchItem$SeriesResult;", "Lcom/bayyari/tv/ui/search/SearchItem;", "series", "Lcom/bayyari/tv/domain/model/Series;", "<init>", "(Lcom/bayyari/tv/domain/model/Series;)V", "getSeries", "()Lcom/bayyari/tv/domain/model/Series;", "component1", "copy", "equals", "", "other", "", "hashCode", "", "toString", "", "app"})
    public static final class SeriesResult extends com.bayyari.tv.ui.search.SearchItem {
        @org.jetbrains.annotations.NotNull()
        private final com.bayyari.tv.domain.model.Series series = null;
        
        public SeriesResult(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.domain.model.Series series) {
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.domain.model.Series getSeries() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.domain.model.Series component1() {
            return null;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.ui.search.SearchItem.SeriesResult copy(@org.jetbrains.annotations.NotNull()
        com.bayyari.tv.domain.model.Series series) {
            return null;
        }
        
        @java.lang.Override()
        public boolean equals(@org.jetbrains.annotations.Nullable()
        java.lang.Object other) {
            return false;
        }
        
        @java.lang.Override()
        public int hashCode() {
            return 0;
        }
        
        @java.lang.Override()
        @org.jetbrains.annotations.NotNull()
        public java.lang.String toString() {
            return null;
        }
    }
}