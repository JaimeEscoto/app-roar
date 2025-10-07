package com.example.roar.ui.theme

import androidx.compose.foundation.isSystemInDarkTheme
import androidx.compose.material3.MaterialTheme
import androidx.compose.material3.darkColorScheme
import androidx.compose.material3.lightColorScheme
import androidx.compose.runtime.Composable
import androidx.compose.ui.graphics.Color

private val LightColorScheme = lightColorScheme(
    primary = AccentDeepBlue,
    onPrimary = Color.White,
    background = BackgroundBottom,
    onBackground = Color.White,
    surface = Color.Transparent,
    onSurface = Color.White
)

private val DarkColorScheme = darkColorScheme(
    primary = AccentDeepBlue,
    onPrimary = Color.White,
    background = AccentDeepBlue,
    onBackground = Color.White,
    surface = Color(0xFF0F1F1A),
    onSurface = Color.White
)

@Composable
fun RoarAppTheme(
    useDarkTheme: Boolean = isSystemInDarkTheme(),
    content: @Composable () -> Unit
) {
    val colorScheme = if (useDarkTheme) DarkColorScheme else LightColorScheme

    MaterialTheme(
        colorScheme = colorScheme,
        typography = Typography,
        content = content
    )
}
