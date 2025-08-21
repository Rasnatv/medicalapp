// import 'package:flutter/material.dart';
// import 'package:innsouls_flutter/app/common/style/app_text_style.dart';
//
// import 'app_colors.dart';
//
// class DOutlineButtonTheme {
//   DOutlineButtonTheme._(); // private constructor
//
//   // Light theme
//   static final LightOutlineButtonTheme = OutlinedButtonThemeData(
//     style: OutlinedButton.styleFrom(
//       //foregroundColor: Colors.black,
//       //disabledForegroundColor: Colors.grey,
//       side: const BorderSide(color: Colors.black12),
//       padding: const EdgeInsets.symmetric(vertical: 18),
//       textStyle:  TextStyle(
//         fontSize: 16,
//         fontWeight: FontWeight.w600,
//         color:AppColors.buttonblue
//       ),
//
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(100),
//       ),
//     ),
//   );
// }
import 'package:flutter/material.dart';
import 'package:innsouls_flutter/app/common/style/app_text_style.dart';

import 'app_colors.dart';

class DOutlineButtonTheme {
  DOutlineButtonTheme._(); // private constructor

  // Light theme
  static final LightOutlineButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: AppColors.buttonblue,
      side: BorderSide(color: Colors.black12),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: AppTextStyle.rTextpoppinslightBlue15w500 ,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(100),
      ),
    ),
  );
}
