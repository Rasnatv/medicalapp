// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
// import 'package:innsouls_flutter/app/common/style/app_colors.dart';
// import 'package:innsouls_flutter/app/common/style/app_input_decoration.dart';
// import 'package:innsouls_flutter/app/common/style/app_text_style.dart';
// import 'package:innsouls_flutter/app/modules/home/controllers/home_controller.dart';
//
// class HomeSearchFiled extends StatelessWidget {
//   const HomeSearchFiled({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return GetBuilder<HomeController>(builder: (context) {
//       return Flexible(
//           child: TextField(
//               controller: context.searchController,
//               style: AppTextStyle.rTextRalewayBlack16w600,
//               textCapitalization: TextCapitalization.sentences,
//               decoration: AppInputDecoration.homeSearchDecoration.copyWith(
//                   suffixIcon: context.searchController!.value.text.isNotEmpty
//                       ? IconButton(onPressed: () => context.clearSearchField(), icon: Icon(Icons.close, color: AppColors.grayButton, size: 20.sp))
//                       : IconButton(onPressed: () {}, icon: Icon(Icons.search_sharp, size: 20.sp), color: AppColors.kPrimary)),
//               onChanged: (_) => context.update()));
//     });
//   }
// }
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';
import 'package:innsouls_flutter/app/common/style/app_text_style.dart';
import 'package:innsouls_flutter/app/modules/home/controllers/home_controller.dart';

class HomeSearchFiled extends StatelessWidget {
  const HomeSearchFiled({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(builder: (controller) {
      return TextField(
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: Colors.grey),
          hintText: "Search doctor, drugs, articles...",
          hintStyle:
          TextStyle(color: Colors.grey, fontSize: 14.sp),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
          EdgeInsets.symmetric(vertical: 12.h),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(color: AppColors.border, width: 1),
          ),

          // When focused (clicked)
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.r),
            borderSide: BorderSide(color: AppColors.border, width: 2),
          ),
        ),
      );
    } );
  }
  }
