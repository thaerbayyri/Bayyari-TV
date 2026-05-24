package com.bayyari.tv.data.work

import android.content.Context
import androidx.hilt.work.HiltWorker
import androidx.work.Constraints
import androidx.work.CoroutineWorker
import androidx.work.NetworkType
import androidx.work.WorkerParameters
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.data.repository.LiveRepository
import com.bayyari.tv.data.repository.MovieRepository
import com.bayyari.tv.data.repository.SeriesRepository
import dagger.assisted.Assisted
import dagger.assisted.AssistedInject
import kotlinx.coroutines.async
import kotlinx.coroutines.awaitAll
import kotlinx.coroutines.coroutineScope

@HiltWorker
class RefreshWorker @AssistedInject constructor(
    @Assisted context: Context,
    @Assisted params: WorkerParameters,
    private val authRepository: AuthRepository,
    private val liveRepository: LiveRepository,
    private val movieRepository: MovieRepository,
    private val seriesRepository: SeriesRepository
) : CoroutineWorker(context, params) {

    override suspend fun doWork(): Result {
        val server = authRepository.getActiveServer() ?: return Result.success()
        return runCatching {
            coroutineScope {
                awaitAll(
                    async { liveRepository.refresh(server) },
                    async { movieRepository.refresh(server) },
                    async { seriesRepository.refresh(server) }
                )
            }
        }.fold(
            onSuccess = { Result.success() },
            onFailure = { Result.retry() }
        )
    }

    companion object {
        val constraints = Constraints.Builder()
            .setRequiredNetworkType(NetworkType.CONNECTED)
            .build()
    }
}
