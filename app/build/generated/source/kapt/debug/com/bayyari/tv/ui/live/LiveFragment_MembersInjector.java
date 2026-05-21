package com.bayyari.tv.ui.live;

import com.bayyari.tv.data.local.dao.FavoriteDao;
import com.bayyari.tv.data.repository.AuthRepository;
import dagger.MembersInjector;
import dagger.internal.DaggerGenerated;
import dagger.internal.InjectedFieldSignature;
import dagger.internal.Provider;
import dagger.internal.QualifierMetadata;
import javax.annotation.processing.Generated;

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
public final class LiveFragment_MembersInjector implements MembersInjector<LiveFragment> {
  private final Provider<FavoriteDao> favoriteDaoProvider;

  private final Provider<AuthRepository> authRepositoryProvider;

  private LiveFragment_MembersInjector(Provider<FavoriteDao> favoriteDaoProvider,
      Provider<AuthRepository> authRepositoryProvider) {
    this.favoriteDaoProvider = favoriteDaoProvider;
    this.authRepositoryProvider = authRepositoryProvider;
  }

  @Override
  public void injectMembers(LiveFragment instance) {
    injectFavoriteDao(instance, favoriteDaoProvider.get());
    injectAuthRepository(instance, authRepositoryProvider.get());
  }

  public static MembersInjector<LiveFragment> create(Provider<FavoriteDao> favoriteDaoProvider,
      Provider<AuthRepository> authRepositoryProvider) {
    return new LiveFragment_MembersInjector(favoriteDaoProvider, authRepositoryProvider);
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.live.LiveFragment.favoriteDao")
  public static void injectFavoriteDao(LiveFragment instance, FavoriteDao favoriteDao) {
    instance.favoriteDao = favoriteDao;
  }

  @InjectedFieldSignature("com.bayyari.tv.ui.live.LiveFragment.authRepository")
  public static void injectAuthRepository(LiveFragment instance, AuthRepository authRepository) {
    instance.authRepository = authRepository;
  }
}
