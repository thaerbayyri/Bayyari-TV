package com.bayyari.tv.data.work;

import androidx.hilt.work.WorkerAssistedFactory;
import androidx.work.ListenableWorker;
import dagger.Binds;
import dagger.Module;
import dagger.hilt.InstallIn;
import dagger.hilt.codegen.OriginatingElement;
import dagger.hilt.components.SingletonComponent;
import dagger.multibindings.IntoMap;
import dagger.multibindings.StringKey;
import javax.annotation.processing.Generated;

@Generated("androidx.hilt.AndroidXHiltProcessor")
@Module
@InstallIn(SingletonComponent.class)
@OriginatingElement(
    topLevelClass = RefreshWorker.class
)
public interface RefreshWorker_HiltModule {
  @Binds
  @IntoMap
  @StringKey("com.bayyari.tv.data.work.RefreshWorker")
  WorkerAssistedFactory<? extends ListenableWorker> bind(RefreshWorker_AssistedFactory factory);
}
