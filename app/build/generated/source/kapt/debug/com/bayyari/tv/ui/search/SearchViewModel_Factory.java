package com.bayyari.tv.ui.search;

import com.bayyari.tv.data.repository.AuthRepository;
import com.bayyari.tv.domain.usecase.SearchUseCase;
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
public final class SearchViewModel_Factory implements Factory<SearchViewModel> {
  private final Provider<AuthRepository> authRepositoryProvider;

  private final Provider<SearchUseCase> searchUseCaseProvider;

  private SearchViewModel_Factory(Provider<AuthRepository> authRepositoryProvider,
      Provider<SearchUseCase> searchUseCaseProvider) {
    this.authRepositoryProvider = authRepositoryProvider;
    this.searchUseCaseProvider = searchUseCaseProvider;
  }

  @Override
  public SearchViewModel get() {
    return newInstance(authRepositoryProvider.get(), searchUseCaseProvider.get());
  }

  public static SearchViewModel_Factory create(Provider<AuthRepository> authRepositoryProvider,
      Provider<SearchUseCase> searchUseCaseProvider) {
    return new SearchViewModel_Factory(authRepositoryProvider, searchUseCaseProvider);
  }

  public static SearchViewModel newInstance(AuthRepository authRepository,
      SearchUseCase searchUseCase) {
    return new SearchViewModel(authRepository, searchUseCase);
  }
}
