package com.bayyari.tv.ui.catchup;

import com.bayyari.tv.domain.usecase.GetCatchUpUseCase;
import dagger.internal.DaggerGenerated;
import dagger.internal.Factory;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import dagger.internal.ScopeMetadata;
import javax.annotation.processing.Generated;

@ScopeMetadata
@QualifierMetadata
@DaggerGenerated
@Generated(
    value = "dagger.internal.codegen.ComponentProcessor",
    comments = "https://dagger.dev"
)
@SuppressWarnings({
    "unchecked",
    "rawtypes",
    "KotlinInternal",
    "KotlinInternalInJava",
    "cast",
    "deprecation",
    "nullness:initialization.field.uninitialized"
})
public final class CatchUpViewModel_Factory implements Factory<CatchUpViewModel> {
  private final Provider<GetCatchUpUseCase> getCatchUpUseCaseProvider;

  private CatchUpViewModel_Factory(Provider<GetCatchUpUseCase> getCatchUpUseCaseProvider) {
    this.getCatchUpUseCaseProvider = getCatchUpUseCaseProvider;
  }

  @Override
  public CatchUpViewModel get() {
    return newInstance(getCatchUpUseCaseProvider.get());
  }

  public static CatchUpViewModel_Factory create(
      Provider<GetCatchUpUseCase> getCatchUpUseCaseProvider) {
    return new CatchUpViewModel_Factory(getCatchUpUseCaseProvider);
  }

  public static CatchUpViewModel newInstance(GetCatchUpUseCase getCatchUpUseCase) {
    return new CatchUpViewModel(getCatchUpUseCase);
  }
}
