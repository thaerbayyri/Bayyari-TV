package com.bayyari.tv.ui.live;

import android.os.Bundle;
import androidx.annotation.CheckResult;
import androidx.navigation.ActionOnlyNavDirections;
import androidx.navigation.NavDirections;
import com.bayyari.tv.R;
import kotlin.Int;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0005\u0018\u0000 \u00052\u00020\u0001:\u0002\u0004\u0005B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003\u00a8\u0006\u0006"}, d2 = {"Lcom/bayyari/tv/ui/live/LiveFragmentDirections;", "", "<init>", "()V", "ActionLiveToEpg", "Companion", "app"})
public final class LiveFragmentDirections {
    @org.jetbrains.annotations.NotNull()
    public static final com.bayyari.tv.ui.live.LiveFragmentDirections.Companion Companion = null;
    
    private LiveFragmentDirections() {
        super();
    }
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\b\u0082\b\u0018\u00002\u00020\u0001B\u0011\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\t\u0010\u000e\u001a\u00020\u0003H\u00c6\u0003J\u0013\u0010\u000f\u001a\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0003H\u00c6\u0001J\u0013\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u00d6\u0003J\t\u0010\u0014\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u0015\u001a\u00020\u0016H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0014\u0010\b\u001a\u00020\u0003X\u0096\u0004\u00a2\u0006\b\n\u0000\u001a\u0004\b\t\u0010\u0007R\u0014\u0010\n\u001a\u00020\u000b8VX\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\b\f\u0010\r\u00a8\u0006\u0017"}, d2 = {"Lcom/bayyari/tv/ui/live/LiveFragmentDirections$ActionLiveToEpg;", "Landroidx/navigation/NavDirections;", "streamId", "", "<init>", "(I)V", "getStreamId", "()I", "actionId", "getActionId", "arguments", "Landroid/os/Bundle;", "getArguments", "()Landroid/os/Bundle;", "component1", "copy", "equals", "", "other", "", "hashCode", "toString", "", "app"})
    static final class ActionLiveToEpg implements androidx.navigation.NavDirections {
        private final int streamId = 0;
        private final int actionId = com.bayyari.tv.R.id.action_live_to_epg;
        
        public ActionLiveToEpg(int streamId) {
            super();
        }
        
        public final int getStreamId() {
            return 0;
        }
        
        @java.lang.Override()
        public int getActionId() {
            return 0;
        }
        
        @java.lang.Override()
        @org.jetbrains.annotations.NotNull()
        public android.os.Bundle getArguments() {
            return null;
        }
        
        public ActionLiveToEpg() {
            super();
        }
        
        public final int component1() {
            return 0;
        }
        
        @org.jetbrains.annotations.NotNull()
        public final com.bayyari.tv.ui.live.LiveFragmentDirections.ActionLiveToEpg copy(int streamId) {
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
    
    @kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002\u00a2\u0006\u0004\b\u0002\u0010\u0003J\u0012\u0010\u0004\u001a\u00020\u00052\b\b\u0002\u0010\u0006\u001a\u00020\u0007H\u0007J\b\u0010\b\u001a\u00020\u0005H\u0007\u00a8\u0006\t"}, d2 = {"Lcom/bayyari/tv/ui/live/LiveFragmentDirections$Companion;", "", "<init>", "()V", "actionLiveToEpg", "Landroidx/navigation/NavDirections;", "streamId", "", "actionLiveToCatchup", "app"})
    public static final class Companion {
        
        private Companion() {
            super();
        }
        
        @androidx.annotation.CheckResult()
        @org.jetbrains.annotations.NotNull()
        public final androidx.navigation.NavDirections actionLiveToEpg(int streamId) {
            return null;
        }
        
        @androidx.annotation.CheckResult()
        @org.jetbrains.annotations.NotNull()
        public final androidx.navigation.NavDirections actionLiveToCatchup() {
            return null;
        }
    }
}