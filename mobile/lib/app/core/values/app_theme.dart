import 'package:flutter/material.dart';
import 'app_colors.dart';

final appTheme = ThemeData(
  // primarySwatch: AppColors.colorPrimarySwatch,
  appBarTheme: const AppBarTheme(backgroundColor: AppColors.colorFF000000),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  brightness: Brightness.light,
  primaryColor: AppColors.colorFF000000,
  colorScheme: const ColorScheme.light(
    background: AppColors.colorFF000000,
    surface: AppColors.colorFF000000,
  ),
  dividerColor: AppColors.colorFF000000,
  dialogTheme: const DialogTheme(
    shape: BeveledRectangleBorder(),
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    sizeConstraints: BoxConstraints.tight(const Size(70, 70)),
  ),
);
