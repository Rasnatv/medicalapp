import 'package:flutter/material.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';

import '../../../common/utils/deviceutilities.dart';
import '../controllers/onboardingcontroller.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({super.key});

  @override
  Widget build(BuildContext context) {

    return  Positioned(
        top: DeviceUtilits.getAppBarHeight(),
        right:20,
        child: TextButton(onPressed: ()=>OnboardingController.instance.skip(),child: Text("Skip",style: TextStyle(fontSize: 17,color:AppColors.grayText),),));
  }
}