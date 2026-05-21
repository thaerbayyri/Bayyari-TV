package com.bayyari.tv.domain.usecase;

import com.bayyari.tv.data.repository.SeriesRepository;
import com.bayyari.tv.domain.model.Series;
import kotlinx.coroutines.flow.Flow;
import javax.inject.Inject;

@kotlin.Metadata(mv = {2, 2, 0}, k = 1, xi = 48, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0011\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\b\u0004\u0010\u0005J\'\u0010\u0006\u001a\u000e\u0012\n\u0012\b\u0012\u0004\u0012\u00020\t0\b0\u00072\u0006\u0010\n\u001a\u00020\u000b2\b\u0010\f\u001a\u0004\u0018\u00010\rH\u0086\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"}, d2 = {"Lcom/bayyari/tv/domain/usecase/GetSeriesUseCase;", "", "seriesRepository", "Lcom/bayyari/tv/data/repository/SeriesRepository;", "<init>", "(Lcom/bayyari/tv/data/repository/SeriesRepository;)V", "invoke", "Lkotlinx/coroutines/flow/Flow;", "", "Lcom/bayyari/tv/domain/model/Series;", "serverId", "", "categoryId", "", "app"})
public final class GetSeriesUseCase {
    @org.jetbrains.annotations.NotNull()
    private final com.bayyari.tv.data.repository.SeriesRepository seriesRepository = null;
    
    @javax.inject.Inject()
    public GetSeriesUseCase(@org.jetbrains.annotations.NotNull()
    com.bayyari.tv.data.repository.SeriesRepository seriesRepository) {
        super();
    }
    
    @org.jetbrains.annotations.NotNull()
    public final kotlinx.coroutines.flow.Flow<java.util.List<com.bayyari.tv.domain.model.Series>> invoke(int serverId, @org.jetbrains.annotations.Nullable()
    java.lang.String categoryId) {
        return null;
    }
}