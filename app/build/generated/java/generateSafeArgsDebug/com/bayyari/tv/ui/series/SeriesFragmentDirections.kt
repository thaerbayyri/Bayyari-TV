package com.bayyari.tv.ui.series

import androidx.`annotation`.CheckResult
import androidx.navigation.ActionOnlyNavDirections
import androidx.navigation.NavDirections
import com.bayyari.tv.R

public class SeriesFragmentDirections private constructor() {
  public companion object {
    @CheckResult
    public fun actionSeriesToDetail(): NavDirections = ActionOnlyNavDirections(R.id.action_series_to_detail)

    @CheckResult
    public fun actionSeriesToSeason(): NavDirections = ActionOnlyNavDirections(R.id.action_series_to_season)
  }
}
