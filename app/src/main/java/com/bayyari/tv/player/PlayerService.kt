package com.bayyari.tv.player

import androidx.media3.common.Player
import androidx.media3.session.MediaSession
import androidx.media3.session.MediaSessionService
import android.app.Notification
import android.app.NotificationChannel
import android.app.NotificationManager
import android.content.Context
import android.app.PendingIntent
import androidx.core.app.NotificationCompat
import androidx.media3.common.MediaMetadata
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class PlayerService : MediaSessionService() {

    @Inject
    lateinit var iptvPlayer: IptvPlayer

    private var session: MediaSession? = null
    private val NOTIF_ID = 0xF11E
    private val CHANNEL_ID = "com.bayyari.tv.player.channel"
    private val ACTION_PLAY = "com.bayyari.tv.player.action.PLAY"
    private val ACTION_PAUSE = "com.bayyari.tv.player.action.PAUSE"

    override fun onCreate() {
        super.onCreate()
        session = MediaSession.Builder(this, iptvPlayer.getPlayer()).build()
        createNotificationChannel()
        // Start foreground with a lightweight notification so playback survives task removal.
        val notif = buildNotification()
        startForeground(NOTIF_ID, notif)

        // Update notification when playback state changes
        iptvPlayer.getPlayer().addListener(object : Player.Listener {
            override fun onIsPlayingChanged(isPlaying: Boolean) {
                val nm = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
                nm.notify(NOTIF_ID, buildNotification())
            }
        })
    }

    override fun onGetSession(controllerInfo: MediaSession.ControllerInfo): MediaSession? = session

    override fun onDestroy() {
        session?.run {
            player.release()
            release()
        }
        session = null
        super.onDestroy()
    }

    override fun onTaskRemoved(rootIntent: android.content.Intent?) {
        val player: Player = iptvPlayer.getPlayer()
        player.pause()
        player.stop()
        stopSelf()
        super.onTaskRemoved(rootIntent)
    }

    private fun createNotificationChannel() {
        val nm = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
        if (android.os.Build.VERSION.SDK_INT >= android.os.Build.VERSION_CODES.O) {
            val chan = NotificationChannel(CHANNEL_ID, "Playback", NotificationManager.IMPORTANCE_LOW)
            chan.description = "Playback controls and status"
            nm.createNotificationChannel(chan)
        }
    }

    private fun buildNotification(): Notification {
        val player = iptvPlayer.getPlayer()
        val isPlaying = player.isPlaying

        val playIntent = PendingIntent.getService(
            this,
            0,
            android.content.Intent(this, PlayerService::class.java).setAction(ACTION_PLAY),
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        )
        val pauseIntent = PendingIntent.getService(
            this,
            1,
            android.content.Intent(this, PlayerService::class.java).setAction(ACTION_PAUSE),
            PendingIntent.FLAG_IMMUTABLE or PendingIntent.FLAG_UPDATE_CURRENT
        )

        val builder = NotificationCompat.Builder(this, CHANNEL_ID)
            .setContentTitle("BAYYARI-TV")
            .setContentText(if (isPlaying) "Playing" else "Paused")
            .setSmallIcon(com.bayyari.tv.R.mipmap.ic_launcher)
            .setOngoing(true)
            .setPriority(NotificationCompat.PRIORITY_LOW)

        if (isPlaying) {
            builder.addAction(android.R.drawable.ic_media_pause, "Pause", pauseIntent)
        } else {
            builder.addAction(android.R.drawable.ic_media_play, "Play", playIntent)
        }

        return builder.build()
    }

    override fun onStartCommand(intent: android.content.Intent?, flags: Int, startId: Int): Int {
        intent?.action?.let { action ->
            when (action) {
                ACTION_PLAY -> iptvPlayer.play()
                ACTION_PAUSE -> iptvPlayer.pause()
            }
            val nm = getSystemService(Context.NOTIFICATION_SERVICE) as NotificationManager
            nm.notify(NOTIF_ID, buildNotification())
        }
        return super.onStartCommand(intent, flags, startId)
    }
}
