package com.bayyari.tv.ui

import android.content.Intent
import android.os.Bundle
import android.util.Log
import androidx.activity.result.contract.ActivityResultContracts
import com.bayyari.tv.R
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.update.StartupUpdateController
import com.bayyari.tv.update.UpdateManager
import com.bayyari.tv.ui.home.TvHomeFragment
import com.bayyari.tv.util.Constants
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class TvMainActivity : BaseActivity() {

    @Inject
    lateinit var authRepository: AuthRepository

    private lateinit var updateController: StartupUpdateController
    private val updateManager: UpdateManager by lazy { UpdateManager(applicationContext) }

    private val installPermissionLauncher = registerForActivityResult(
        ActivityResultContracts.StartActivityForResult()
    ) { updateController.onInstallPermissionResult() }

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        try {
            setContentView(R.layout.activity_tv_main)

            updateController = StartupUpdateController(
                activity = this,
                updateManager = updateManager,
                installPermissionLauncher = installPermissionLauncher,
                tag = TAG
            )

            if (savedInstanceState == null) {
                supportFragmentManager.beginTransaction()
                    .replace(R.id.tv_container, TvHomeFragment())
                    .commit()

                if (authRepository.getActiveServer() != null) {
                    updateController.checkOnOpen()
                }
            }
        } catch (t: Throwable) {
            Log.e(TAG, "TV host crashed; falling back to phone UI", t)
            getSharedPreferences(Constants.APP_PREFS, MODE_PRIVATE)
                .edit()
                .putBoolean(Constants.PREF_FORCE_PHONE_UI, true)
                .apply()
            startActivity(
                Intent(this, MainActivity::class.java)
                    .addFlags(Intent.FLAG_ACTIVITY_NEW_TASK or Intent.FLAG_ACTIVITY_CLEAR_TASK)
            )
            finish()
        }
    }

    fun showTvSection(fragment: androidx.fragment.app.Fragment) {
        supportFragmentManager.beginTransaction()
            .replace(R.id.tv_container, fragment)
            .addToBackStack(fragment.javaClass.name)
            .commit()
    }

    override fun onStart() {
        super.onStart()
        if (authRepository.getActiveServer() == null) {
            startActivity(
                Intent(this, com.bayyari.tv.ui.auth.LoginActivity::class.java)
                    .putExtra(com.bayyari.tv.ui.auth.LoginActivity.EXTRA_TV_ENTRY, true)
            )
        }
    }

    companion object {
        private const val TAG = "TvMainActivity"
    }
}
