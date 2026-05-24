package com.bayyari.tv.util

import android.content.Context
import android.content.SharedPreferences
import android.util.Log
import androidx.security.crypto.EncryptedSharedPreferences
import androidx.security.crypto.MasterKey
import com.bayyari.tv.domain.model.Server
import com.google.gson.Gson
import com.google.gson.reflect.TypeToken
import dagger.hilt.android.qualifiers.ApplicationContext
import java.security.MessageDigest
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Encrypted credential store. Wraps EncryptedSharedPreferences (AES256_SIV / AES256_GCM) backed by
 * an Android Keystore master key. Stores a JSON list of [Server] configurations plus a pointer
 * to the active one.
 *
 * If the Keystore is corrupt, we delete the stale prefs file and retry once. A second failure
 * throws so the caller (Hilt app init) crashes visibly rather than silently persisting
 * credentials in plaintext.
 */
@Singleton
class EncryptedPrefs @Inject constructor(
    @ApplicationContext private val context: Context,
    private val gson: Gson
) {

    private val prefs: SharedPreferences = createPrefs(context)

    private fun createPrefs(context: Context): SharedPreferences {
        return try {
            buildEncryptedPrefs(context)
        } catch (first: Throwable) {
            Log.w(TAG, "EncryptedSharedPreferences first attempt failed — wiping and retrying", first)
            context.deleteSharedPreferences(Constants.SECURE_PREFS)
            buildEncryptedPrefs(context) // throws on second failure — no plaintext fallback
        }
    }

    private fun buildEncryptedPrefs(context: Context): SharedPreferences {
        val masterKey = MasterKey.Builder(context)
            .setKeyScheme(MasterKey.KeyScheme.AES256_GCM)
            .build()
        return EncryptedSharedPreferences.create(
            context,
            Constants.SECURE_PREFS,
            masterKey,
            EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV,
            EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM
        )
    }

    companion object {
        private const val TAG = "EncryptedPrefs"
    }

    private val listType = object : TypeToken<List<Server>>() {}.type

    @Synchronized
    fun getServers(): List<Server> {
        val raw = prefs.getString(Constants.PREF_SERVERS_JSON, null) ?: return emptyList()
        return runCatching { gson.fromJson<List<Server>>(raw, listType) }.getOrDefault(emptyList())
    }

    @Synchronized
    fun saveServers(servers: List<Server>) {
        prefs.edit().putString(Constants.PREF_SERVERS_JSON, gson.toJson(servers)).apply()
    }

    @Synchronized
    fun upsertServer(server: Server): Server {
        val current = getServers().toMutableList()
        val idx = current.indexOfFirst { it.id == server.id }
        val withId = if (server.id == 0) {
            val nextId = (current.maxOfOrNull { it.id } ?: 0) + 1
            server.copy(id = nextId)
        } else server
        if (idx >= 0) current[idx] = withId else current.add(withId)
        saveServers(current)
        if (getActiveServerId() == 0) setActiveServerId(withId.id)
        return withId
    }

    @Synchronized
    fun removeServer(id: Int) {
        val remaining = getServers().filterNot { it.id == id }
        saveServers(remaining)
        if (getActiveServerId() == id) {
            setActiveServerId(remaining.firstOrNull()?.id ?: 0)
        }
    }

    fun getActiveServerId(): Int = prefs.getInt(Constants.PREF_ACTIVE_SERVER, 0)
    fun setActiveServerId(id: Int) {
        prefs.edit().putInt(Constants.PREF_ACTIVE_SERVER, id).apply()
        // commit() is intentional: MainActivity.hasActiveServer() reads this synchronously
        // on the main thread immediately after login — apply() risks a race condition.
        context.getSharedPreferences(Constants.APP_PREFS, Context.MODE_PRIVATE)
            .edit()
            .putBoolean(Constants.PREF_HAS_ACTIVE_SERVER, id != 0)
            .commit()
    }

    fun getActiveServer(): Server? {
        val activeId = getActiveServerId()
        if (activeId == 0) return null
        return getServers().firstOrNull { it.id == activeId }
    }

    fun setRememberLogin(remember: Boolean) =
        prefs.edit().putBoolean(Constants.PREF_REMEMBER_LOGIN, remember).apply()

    fun isRememberLogin(): Boolean =
        prefs.getBoolean(Constants.PREF_REMEMBER_LOGIN, true)

    fun setDefaultPlayer(value: String) =
        prefs.edit().putString(Constants.PREF_DEFAULT_PLAYER, value).apply()

    fun getDefaultPlayer(): String =
        prefs.getString(Constants.PREF_DEFAULT_PLAYER, "internal").orEmpty()

    fun setStreamFormat(value: String) =
        prefs.edit().putString(Constants.PREF_STREAM_FORMAT, value).apply()

    fun getStreamFormat(): String =
        prefs.getString(Constants.PREF_STREAM_FORMAT, "ts").orEmpty()

    fun setBufferSizeMs(value: Int) =
        prefs.edit().putInt(Constants.PREF_BUFFER_SIZE, value).apply()

    fun getBufferSizeMs(): Int =
        prefs.getInt(Constants.PREF_BUFFER_SIZE, Constants.MAX_BUFFER_MS)

    fun setAutoPlayNext(enabled: Boolean) =
        prefs.edit().putBoolean(Constants.PREF_AUTO_PLAY_NEXT, enabled).apply()

    fun getAutoPlayNext(): Boolean =
        prefs.getBoolean(Constants.PREF_AUTO_PLAY_NEXT, true)

    fun setParentalPin(pin: String) {
        val hash = sha256(pin)
        prefs.edit().putString(Constants.PREF_PARENTAL_PIN, hash).apply()
    }

    fun verifyParentalPin(entered: String): Boolean {
        val stored = prefs.getString(Constants.PREF_PARENTAL_PIN, "").orEmpty()
        return stored.isNotEmpty() && stored == sha256(entered)
    }

    fun hasParentalPin(): Boolean =
        prefs.getString(Constants.PREF_PARENTAL_PIN, "").orEmpty().isNotEmpty()

    private fun sha256(input: String): String {
        val digest = MessageDigest.getInstance("SHA-256")
        val bytes = digest.digest(input.toByteArray(Charsets.UTF_8))
        return bytes.joinToString("") { "%02x".format(it) }
    }

    fun setLastChannelId(streamId: Int) =
        prefs.edit().putInt(Constants.PREF_LAST_CHANNEL_ID, streamId).apply()

    fun getLastChannelId(): Int =
        prefs.getInt(Constants.PREF_LAST_CHANNEL_ID, 0)

    fun setLiveSortMode(value: String) =
        prefs.edit().putString(Constants.PREF_LIVE_SORT_MODE, value).apply()

    fun getLiveSortMode(): String =
        prefs.getString(Constants.PREF_LIVE_SORT_MODE, "name_asc").orEmpty()

    @Synchronized
    fun getHiddenLiveCategoryIds(): Set<String> =
        prefs.getStringSet(Constants.PREF_HIDDEN_LIVE_CATEGORIES, emptySet()).orEmpty()

    @Synchronized
    fun getHiddenMovieCategoryIds(): Set<String> =
        prefs.getStringSet(Constants.PREF_HIDDEN_MOVIE_CATEGORIES, emptySet()).orEmpty()

    @Synchronized
    fun getHiddenSeriesCategoryIds(): Set<String> =
        prefs.getStringSet(Constants.PREF_HIDDEN_SERIES_CATEGORIES, emptySet()).orEmpty()

    @Synchronized
    fun hideLiveCategory(categoryId: String) {
        hideCategory(Constants.PREF_HIDDEN_LIVE_CATEGORIES, categoryId)
    }

    @Synchronized
    fun hideMovieCategory(categoryId: String) {
        hideCategory(Constants.PREF_HIDDEN_MOVIE_CATEGORIES, categoryId)
    }

    @Synchronized
    fun hideSeriesCategory(categoryId: String) {
        hideCategory(Constants.PREF_HIDDEN_SERIES_CATEGORIES, categoryId)
    }

    @Synchronized
    fun clearHiddenLiveCategories() {
        prefs.edit()
            .remove(Constants.PREF_HIDDEN_LIVE_CATEGORIES)
            .remove(Constants.PREF_HIDDEN_MOVIE_CATEGORIES)
            .remove(Constants.PREF_HIDDEN_SERIES_CATEGORIES)
            .apply()
    }

    fun setSeriesSortMode(value: String) =
        prefs.edit().putString(Constants.PREF_SERIES_SORT_MODE, value).apply()

    fun getSeriesSortMode(): String =
        prefs.getString(Constants.PREF_SERIES_SORT_MODE, "added_desc").orEmpty()

    private fun hideCategory(key: String, categoryId: String) {
        if (categoryId.isBlank()) return
        val hidden = prefs.getStringSet(key, emptySet()).orEmpty().toMutableSet()
        hidden += categoryId
        prefs.edit().putStringSet(key, hidden).apply()
    }

    fun clearAll() {
        prefs.edit().clear().apply()
        context.getSharedPreferences(Constants.APP_PREFS, Context.MODE_PRIVATE)
            .edit()
            .putBoolean(Constants.PREF_HAS_ACTIVE_SERVER, false)
            .apply()
    }
}
