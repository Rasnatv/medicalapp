import 'package:flutter/material.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../common/utils/deviceutilities.dart';
import '../controllers/onboardingcontroller.dart';

class OnBoardingIndicator extends StatelessWidget {
  const OnBoardingIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: DeviceUtilits.getBottomappbarHeight(),
      left: 20,
      child: SmoothPageIndicator(
        controller: controller.pageController, // ✅ fixed name
        onDotClicked: controller.dotNavigationIndicator,
        count: 2, //
        effect: ExpandingDotsEffect(
          activeDotColor: AppColors.kPrimary,
          dotHeight: 6,
          dotWidth: 8,
        ),
      ),
    );
  }
}

