# ROAR Android Prototype

This directory contains a Jetpack Compose prototype that mirrors the welcome
experience built for the SwiftUI iOS app. The screen uses a diagonal gradient,
welcoming copy, and a primary call-to-action button styled to match the iOS
prototype.

## Getting started

1. Open the project folder (`android/RoarApp`) in **Android Studio
   Hedgehog (2023.1.1)** or newer.
2. Let Android Studio sync the Gradle project. The project is configured for
   **compile SDK 34** and uses **Kotlin 1.9** with Material 3 Compose.
3. Run the **`app`** configuration on an Android emulator or physical device
   running API level 24 or higher.

The main UI is defined in `MainActivity.kt`, specifically within the
`WelcomeScreen` composable. This mirrors the SwiftUI `WelcomeView` from the iOS
prototype so design tweaks can be shared across both platforms.
