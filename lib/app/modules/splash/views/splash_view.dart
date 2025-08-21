import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:innsouls_flutter/app/common/constants/app_images.dart';
import 'package:innsouls_flutter/app/common/style/dimens.dart';

import '../../../common/style/app_text_style.dart';
import '../controllers/splash_controller.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Image(image: AssetImage(AppImages.splashlogo)),
           Dimens.kSizedBoxH12,
          Text("Healthcare",style:AppTextStyle.rTextpoppinsBlue28w50),
          Dimens.kSizedBoxH10,
          Text("Medical app",style: AppTextStyle. rTextpoppinsBlue14w100,)
        
      ],),)

    );
  }
}
