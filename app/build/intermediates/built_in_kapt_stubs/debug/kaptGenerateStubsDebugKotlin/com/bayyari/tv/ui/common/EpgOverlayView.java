package com.bayyari.tv.ui.common;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.LinearLayoutManager;
import com.bayyari.tv.databinding.ViewEpgOverlayBinding;
import com.bayyari.tv.domain.model.EpgProgram;
import com.bayyari.tv.ui.common.adapter.EpgProgramAdapter;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u001d\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\b\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0004\b\u0006\u0010\u0007J\u0014\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000fR\u000e\u0010\b\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"}, d2 = {"Lcom/bayyari/tv/ui/common/EpgOverlayView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "<init>", "(Landroid/content/Context;Landroid/util/AttributeSet;)V", "binding", "Lcom/bayyari/tv/databinding/ViewEpgOverlayBinding;", "adapter", "Lcom/bayyari/tv/ui/common/adapter/EpgProgramAdapter;", "submit", "", "items", "", "Lcom/bayyari/tv/domain/model/EpgProgram;", "app"})
public final class EpgOverlayView extends android.widget.FrameLayout {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.databinding.ViewEpgOverlayBinding binding = null;
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.ui.common.adapter.EpgProgramAdapter adapter = null;
    
    @kotlin.jvm.JvmOverloads()
    public EpgOverlayView(@org.jetbrains.annotations.NotNull()
    android.content.Context context) {
        super(null);
    }
    
    @kotlin.jvm.JvmOverloads()
    public EpgOverlayView(@org.jetbrains.annotations.NotNull()
    android.content.Context context, @org.jetbrains.annotations.Nullable()
    android.util.AttributeSet attrs) {
        super(null);
    }
    
    public final void submit(@org.jetbrains.annotations.NotNull()
    java.util.List<com.bayyari.tv.domain.model.EpgProgram> items) {
    }
}