import 'package:flutter/material.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';
import 'package:innsouls_flutter/app/common/style/textformtheme.dart';

import 'elevatedbuttontheme.dart';
import 'outlinebuttontheme.dart';

class AppTheme {
  static ThemeData themeData = ThemeData(
      primaryColor: AppColors.kPrimary,
      primarySwatch: AppColors.kPrimarySwatch,
      colorScheme: ColorScheme.fromSeed(
        seedColor: const Color.fromRGBO(16, 76, 146, 1),
        onSurface: AppColors.kPrimary,
      ),
      scaffoldBackgroundColor: AppColors.kScaffoldBackground,
      useMaterial3: true,
      appBarTheme: AppBarTheme(backgroundColor: AppColors.kScaffoldBackground,foregroundColor: AppColors.black),
      dialogBackgroundColor: Colors.white,
    elevatedButtonTheme: DElevatedButtonTheme.LightElevatedButtonTheme,
    outlinedButtonTheme: DOutlineButtonTheme.LightOutlineButtonTheme,
    inputDecorationTheme:  DTextFormFieldTheme.lightinputdecorationTheme
  );
}
