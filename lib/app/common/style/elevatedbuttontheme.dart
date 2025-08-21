import 'package:flutter/material.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';
import 'package:innsouls_flutter/app/common/style/app_text_style.dart';

class DElevatedButtonTheme {
  DElevatedButtonTheme._(); // private constructor

  // Light theme
  static final LightElevatedButtonTheme = ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: Colors.white,
        backgroundColor: AppColors.kPrimary,
        disabledBackgroundColor: Colors.grey.shade300,
        disabledForegroundColor: Colors.grey.shade600,
        side: const BorderSide(color: Colors.blue),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: AppTextStyle.rTextpoppinsWhite15w400 ,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(100),
        ),
      )
  );
}