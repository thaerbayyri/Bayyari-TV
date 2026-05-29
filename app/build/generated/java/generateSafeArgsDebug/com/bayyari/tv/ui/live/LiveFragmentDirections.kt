package com.bayyari.tv.ui.live

import android.os.Bundle
import androidx.`annotation`.CheckResult
import androidx.navigation.ActionOnlyNavDirections
import androidx.navigation.NavDirections
import com.bayyari.tv.R
import kotlin.Int

public class LiveFragmentDirections private constructor() {
  private data class ActionLiveToEpg(
    public val streamId: Int = 0,
  ) : NavDirections {
    public override val actionId: Int = R.id.action_live_to_epg

    public override val arguments: Bundle
      get() {
        val result = Bundle()
        result.putInt("streamId", this.streamId)
        return result
      }
  }

  public companion object {
    @CheckResult
    public fun actionLiveToEpg(streamId: Int = 0): NavDirections = ActionLiveToEpg(streamId)

    @CheckResult
    public fun actionLiveToCatchup(): NavDirections = ActionOnlyNavDirections(R.id.action_live_to_catchup)
  }
}
