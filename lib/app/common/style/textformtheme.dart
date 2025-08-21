import 'package:flutter/material.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';
import 'package:innsouls_flutter/app/common/style/app_text_style.dart';

class DTextFormFieldTheme {
  DTextFormFieldTheme._();

  static InputDecorationTheme lightinputdecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,

    // Label & hint style
    labelStyle: AppTextStyle.rTextpoppinslightgrey12w500.copyWith(
      fontSize: 14,
      color: Colors.black,
    ),
    hintStyle: AppTextStyle.rTextpoppinslightgrey12w500,

    // Error style
    errorStyle: const TextStyle().copyWith(
      fontStyle: FontStyle.normal,
    ),

    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black54,
    ),

    // Borders
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8), // ← changed to 8
      borderSide: BorderSide(
        width: 1,
        color: AppColors.border,
      ),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8), // ← changed to 8
      borderSide: BorderSide(
        width: 1,
        color: AppColors.border,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8), // ← changed to 8
      borderSide: BorderSide(
        width: 2,
        color: AppColors.border,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8), // ← changed to 8
      borderSide: const BorderSide(
        width: 1,
        color: Colors.red,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8), // ← changed to 8
      borderSide: const BorderSide(
        width: 1,
        color: Colors.orange,
      ),
    ),
  );
}
