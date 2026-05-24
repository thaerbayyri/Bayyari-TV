package com.bayyari.tv.ui

import android.content.Intent
import android.os.Bundle
import com.bayyari.tv.R
import com.bayyari.tv.data.repository.AuthRepository
import com.bayyari.tv.ui.home.TvHomeFragment
import dagger.hilt.android.AndroidEntryPoint
import javax.inject.Inject

@AndroidEntryPoint
class TvMainActivity : BaseActivity() {

    @Inject
    lateinit var authRepository: AuthRepository

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_tv_main)

        if (savedInstanceState == null) {
            supportFragmentManager.beginTransaction()
                .replace(R.id.tv_container, TvHomeFragment())
                .commit()
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
            startActivity(Intent(this, com.bayyari.tv.ui.auth.LoginActivity::class.java))
        }
    }
}
