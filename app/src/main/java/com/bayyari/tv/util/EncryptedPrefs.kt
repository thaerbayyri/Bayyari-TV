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
import javax.inject.Inject
import javax.inject.Singleton

/**
 * Encrypted credential store. Wraps EncryptedSharedPreferences (AES256_SIV / AES256_GCM) backed by
 * an Android Keystore master key. Stores a JSON list of [Server] configurations plus a pointer
 * to the active one.
 *
 * If the Android Keystore is unavailable (some custom ROMs, certain emulators, or a corrupted
 * keystore after a backup/restore), [EncryptedSharedPreferences.create] throws and would crash the
 * whole app on launch. We fall back to a plain SharedPreferences in that case — credentials are
 * still stored on the device, just not at-rest encrypted. This is a deliberate trade-off so the
 * app remains usable.
 */
@Singleton
class EncryptedPrefs @Inject constructor(
    @ApplicationContext private val context: Context,
    private val gson: Gson
) {

    private val prefs: SharedPreferences = createPrefs(context)

    private fun createPrefs(context: Context): SharedPreferences {
        return try {
            val masterKey = MasterKey.Builder(context)
                .setKeyScheme(MasterKey.KeyScheme.AES256_GCM)
                .build()
            EncryptedSharedPreferences.create(
                context,
                Constants.SECURE_PREFS,
                masterKey,
                EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV,
                EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM
            )
        } catch (t: Throwable) {
            Log.w(TAG, "EncryptedSharedPreferences unavailable, falling back to plain prefs", t)
            // Try once more after wiping any half-initialized state from a previous failed attempt.
            return try {
                context.deleteSharedPreferences(Constants.SECURE_PREFS)
                val masterKey = MasterKey.Builder(context)
                    .setKeyScheme(MasterKey.KeyScheme.AES256_GCM)
                    .build()
                EncryptedSharedPreferences.create(
                    context,
                    Constants.SECURE_PREFS,
                    masterKey,
                    EncryptedSharedPreferences.PrefKeyEncryptionScheme.AES256_SIV,
                    EncryptedSharedPreferences.PrefValueEncryptionScheme.AES256_GCM
                )
            } catch (_: Throwable) {
                context.getSharedPreferences(Constants.SECURE_PREFS + "_fallback", Context.MODE_PRIVATE)
            }
        }
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
    fun setActiveServerId(id: Int) = prefs.edit().putInt(Constants.PREF_ACTIVE_SERVER, id).apply()

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
        prefs.getString(Constants.PREF_STREAM_FORMAT, "hls").orEmpty()

    fun setBufferSizeMs(value: Int) =
        prefs.edit().putInt(Constants.PREF_BUFFER_SIZE, value).apply()

    fun getBufferSizeMs(): Int =
        prefs.getInt(Constants.PREF_BUFFER_SIZE, Constants.MIN_BUFFER_MS)

    fun setAutoPlayNext(enabled: Boolean) =
        prefs.edit().putBoolean(Constants.PREF_AUTO_PLAY_NEXT, enabled).apply()

    fun getAutoPlayNext(): Boolean =
        prefs.getBoolean(Constants.PREF_AUTO_PLAY_NEXT, true)

    fun setParentalPin(pin: String) =
        prefs.edit().putString(Constants.PREF_PARENTAL_PIN, pin).apply()

    fun getParentalPin(): String =
        prefs.getString(Constants.PREF_PARENTAL_PIN, "").orEmpty()

    fun setLastChannelId(streamId: Int) =
        prefs.edit().putInt(Constants.PREF_LAST_CHANNEL_ID, streamId).apply()

    fun getLastChannelId(): Int =
        prefs.getInt(Constants.PREF_LAST_CHANNEL_ID, 0)

    fun clearAll() = prefs.edit().clear().apply()
}
