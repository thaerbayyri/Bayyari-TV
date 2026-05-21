package com.bayyari.tv.ui.settings

import androidx.`annotation`.CheckResult
import androidx.navigation.ActionOnlyNavDirections
import androidx.navigation.NavDirections
import com.bayyari.tv.R

public class SettingsFragmentDirections private constructor() {
  public companion object {
    @CheckResult
    public fun actionSettingsToServerManager(): NavDirections = ActionOnlyNavDirections(R.id.action_settings_to_server_manager)
  }
}
