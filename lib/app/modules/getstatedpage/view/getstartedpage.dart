import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';
import 'package:innsouls_flutter/app/modules/signin/view/signin.dart';
import 'package:innsouls_flutter/app/modules/signup/view/Signup.dart';

import '../../../common/constants/app_images.dart';
import '../../../common/style/app_text_style.dart';
import '../../../common/style/dimens.dart';
class Getstartedpage extends StatelessWidget {
  const Getstartedpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body:Padding(padding: EdgeInsets.all(20),child:Expanded(child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [

        SizedBox(height: 250),
        Image(image: AssetImage(AppImages.splashlogo)),
        Dimens.kSizedBoxH12,
        Text("Healthcare",style:AppTextStyle.rTextpoppinsBlue28w50),
        Dimens.kSizedBoxH20,
        Text("Let's get started! ",style: AppTextStyle. rtextpoppinsBlack19w700 ,),
        Dimens.kSizedBoxH10,
        Text("Login to stay healthy and fit",style: AppTextStyle. rTextpoppinslightblack18w400),
        SizedBox(height: 50,),
        SizedBox(width:350.w,height: 60.h,child:ElevatedButton(onPressed: ()=>Get.to(()=>SigninView()) ,child: Text("Login")),),
        Dimens.kSizedBoxH20,
        SizedBox(width:350.h,height: 60.h,child:OutlinedButton(onPressed: ()=>Get.to(()=>SignUpView()), child: Text("Sign up")),),


    ],)
    )
    )
      );
  }
}
