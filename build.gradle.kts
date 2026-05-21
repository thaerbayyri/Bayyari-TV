plugins {
    id("com.android.application") version "9.2.1" apply false
    id("com.android.library") version "9.2.1" apply false
    id("com.google.dagger.hilt.android") version "2.59.2" apply false
    id("com.android.legacy-kapt") version "9.2.1" apply false
    id("androidx.navigation.safeargs.kotlin") version "2.9.6" apply false
}

tasks.register("clean", Delete::class) {
    delete(rootProject.layout.buildDirectory)
}
