
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:innsouls_flutter/app/routes/app_pages.dart';

class SplashController extends GetxController {
  final storage = GetStorage();

  @override
  void onReady() {
    super.onReady();
    _navigate();
  }

  void _navigate() async {
    await Future.delayed(const Duration(seconds: 2)); // splash delay

    bool seenOnboarding = storage.read('seenOnboarding') ?? false;
    bool isLoggedIn = storage.read('isLoggedIn') ?? false;

    if (!seenOnboarding) {
      // First time → show onboarding
      Get.offAllNamed(Routes.ONBOARDING);
    } else {
      if (isLoggedIn) {
        // Already logged in → go home
        Get.offAllNamed(Routes.HOME);
      } else {
        // Not logged in → show GetStarted/Signup
        Get.offAllNamed(Routes.GETSTARTED);
      }
    }
  }
}
