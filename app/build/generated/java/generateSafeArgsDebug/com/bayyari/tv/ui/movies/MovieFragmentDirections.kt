package com.bayyari.tv.ui.movies

import androidx.`annotation`.CheckResult
import androidx.navigation.ActionOnlyNavDirections
import androidx.navigation.NavDirections
import com.bayyari.tv.R

public class MovieFragmentDirections private constructor() {
  public companion object {
    @CheckResult
    public fun actionMovieToDetail(): NavDirections = ActionOnlyNavDirections(R.id.action_movie_to_detail)
  }
}
