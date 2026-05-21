package com.bayyari.tv.util

import android.content.Context
import android.view.View
import android.widget.Toast
import androidx.fragment.app.Fragment
import java.text.SimpleDateFormat
import java.util.Date
import java.util.Locale
import java.util.concurrent.TimeUnit

fun Context.toast(message: CharSequence) {
    Toast.makeText(this, message, Toast.LENGTH_SHORT).show()
}

fun Fragment.toast(message: CharSequence) = requireContext().toast(message)

fun View.visible() { visibility = View.VISIBLE }
fun View.gone() { visibility = View.GONE }
fun View.invisible() { visibility = View.INVISIBLE }
fun View.visibleIf(condition: Boolean) { visibility = if (condition) View.VISIBLE else View.GONE }

fun Long.formatAsClock(): String {
    val totalSeconds = TimeUnit.MILLISECONDS.toSeconds(this).coerceAtLeast(0)
    val hours = totalSeconds / 3600
    val minutes = (totalSeconds % 3600) / 60
    val seconds = totalSeconds % 60
    return if (hours > 0) {
        String.format(Locale.US, "%d:%02d:%02d", hours, minutes, seconds)
    } else {
        String.format(Locale.US, "%d:%02d", minutes, seconds)
    }
}

fun Long.toEpgTime(): String = SimpleDateFormat("HH:mm", Locale.getDefault()).format(Date(this))

fun String?.orDash(): String = if (this.isNullOrBlank()) "—" else this

/**
 * Append a trailing slash if missing. Server URL stored in user input may or may not have one.
 */
fun String.ensureTrailingSlash(): String = if (endsWith("/")) this else "$this/"
