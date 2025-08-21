
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../common/constants/app_images.dart';
import '../../../common/constants/text_String.dart';
import '../controllers/onboardingcontroller.dart';
import '../widget/onboarding.dart';
import '../widget/onboardingindicator.dart';
import '../widget/onboardingnext.dart';
import '../widget/onboardingskip.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,

          children: [
            OnBoarding(image: AppImages.onBoardingimage1, text1: Dtexts.onBoardingTitle1),
            OnBoarding(image: AppImages.onBoardingimage2, text1: Dtexts.onBoardingTitle2),

          ],
        ),
        OnBoardingIndicator(),
        OnBoardingSkip(),
        OnBoardingNext()

      ]),
    );
  }
}
