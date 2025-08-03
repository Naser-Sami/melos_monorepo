import 'package:flutter/material.dart';
import 'package:theme/colors/app_colors/light_theme.dart';
import 'package:theme/colors/color_scheme/light_color_scheme.dart';

ThemeData _lightTheme = ThemeData.light(useMaterial3: true).copyWith(
  brightness: Brightness.light,
  colorScheme: lightColorScheme,
  scaffoldBackgroundColor: LightThemeColors.surface,
  dividerColor: LightThemeColors.onSurface.withValues(alpha: 0.25),
  cardColor: LightThemeColors.surface,
);

ThemeData get lightTheme => _lightTheme;
