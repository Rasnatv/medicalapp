import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innsouls_flutter/app/common/constants/app_images.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';


import '../../../common/style/app_text_style.dart';
import '../../../common/style/dimens.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment:MainAxisAlignment.center,
      children: [
        SizedBox(
          width: 350.w,
          height: 60,
          child: OutlinedButton(
            onPressed:(){},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                 AppImages.google,width: 24,height: 24,
                ),
                const SizedBox(width: 40), // 👈 extra space here
                 Text("Sign in with Google",style: AppTextStyle.rtextpoppinsBlack15w700),
              ],
            ),
          ),
        ),

        Dimens.kSizedBoxH30,
        SizedBox(
          width: 350.w,
          height: 60,
          child: OutlinedButton(
            onPressed:(){},
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                 AppImages.facebook,width: 24,height: 24,
                ),
                const SizedBox(width: 40), // 👈 extra space here
                 Text("Sign in with facebook",style: AppTextStyle.rtextpoppinsBlack15w700,),
              ],
            ),
          ),
        ),

      ]);




  }
}
