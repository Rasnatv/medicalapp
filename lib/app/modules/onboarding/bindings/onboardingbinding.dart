import 'package:get/get.dart';


import '../controllers/onboardingcontroller.dart';

class Onboardingbinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<OnboardingController>(
          () =>OnboardingController(),
    );
  }
}
