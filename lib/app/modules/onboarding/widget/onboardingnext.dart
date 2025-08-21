import 'package:flutter/material.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';

import '../../../common/utils/deviceutilities.dart';
import '../controllers/onboardingcontroller.dart';

class OnBoardingNext extends StatelessWidget {
  const OnBoardingNext({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: DeviceUtilits.getBottomappbarHeight(),
      right: 20,
      child: SizedBox(
        height: 60,
        child: ElevatedButton(
          onPressed: controller.nextPage,
          style: ElevatedButton.styleFrom(
            shape: const CircleBorder(),
            backgroundColor: AppColors.kPrimary,
          ),
          child: const Icon(Icons.arrow_forward, color: Colors.white),
        ),
      ),
    );
  }
}
