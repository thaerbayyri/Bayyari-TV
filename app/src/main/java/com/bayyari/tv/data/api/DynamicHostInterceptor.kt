package com.bayyari.tv.data.api

import com.bayyari.tv.util.EncryptedPrefs
import okhttp3.HttpUrl.Companion.toHttpUrl
import okhttp3.Interceptor
import okhttp3.Response
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Rewrites the request URL to point at the currently active server stored in [EncryptedPrefs].
 *
 * Retrofit is configured with a placeholder base URL (`http://placeholder.local/`); this
 * interceptor swaps scheme + host + port + base path with the active server's URL on each call,
 * so a single Retrofit instance can serve multiple Xtream backends without re-creating it.
 */
@Singleton
class DynamicHostInterceptor @Inject constructor(
    private val prefs: EncryptedPrefs
) : Interceptor {

    override fun intercept(chain: Interceptor.Chain): Response {
        val original = chain.request()
        // Only rewrite Retrofit placeholder URLs. Direct-URL requests must reach the host as-is.
        if (original.url.host != "placeholder.local") {
            return chain.proceed(original)
        }
        val active = prefs.getActiveServer() ?: return chain.proceed(original)

        val baseUrl = try {
            active.url.toHttpUrl()
        } catch (e: IllegalArgumentException) {
            return chain.proceed(original)
        }
        val builder = original.url.newBuilder()
            .scheme(baseUrl.scheme)
            .host(baseUrl.host)
            .port(baseUrl.port)

        val basePathSegments = baseUrl.encodedPathSegments.filter { it.isNotEmpty() }
        if (basePathSegments.isNotEmpty()) {
            val originalPathSegments = original.url.encodedPathSegments.filter { it.isNotEmpty() }
            builder.encodedPath("/")
            basePathSegments.forEach { builder.addEncodedPathSegment(it) }
            originalPathSegments.forEach { builder.addEncodedPathSegment(it) }
        }

        val rewritten = builder.build()
        return chain.proceed(original.newBuilder().url(rewritten).build())
    }
}
