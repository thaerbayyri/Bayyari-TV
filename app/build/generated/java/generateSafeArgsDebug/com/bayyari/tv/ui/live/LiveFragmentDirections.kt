package com.bayyari.tv.ui.live

import androidx.`annotation`.CheckResult
import androidx.navigation.ActionOnlyNavDirections
import androidx.navigation.NavDirections
import com.bayyari.tv.R

public class LiveFragmentDirections private constructor() {
  public companion object {
    @CheckResult
    public fun actionLiveToEpg(): NavDirections = ActionOnlyNavDirections(R.id.action_live_to_epg)

    @CheckResult
    public fun actionLiveToCatchup(): NavDirections = ActionOnlyNavDirections(R.id.action_live_to_catchup)
  }
}
