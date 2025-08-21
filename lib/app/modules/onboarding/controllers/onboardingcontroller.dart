
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:innsouls_flutter/app/routes/app_pages.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  final pageController = PageController();
  final storage = GetStorage();

  Rx<int> currentPageIndex = 0.obs;

  void updatePageIndicator(int index) {
    currentPageIndex.value = index;
  }

  void dotNavigationIndicator(int index) {
    currentPageIndex.value = index;
    pageController.animateToPage(
      index,
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeInOut,
    );
  }

  void completeOnboarding() {
    storage.write('seenOnboarding', true);
    Get.offAllNamed(Routes.GETSTARTED); // go to GetStartedPage
  }

  void skip() {
    completeOnboarding(); // skip directly
  }

  void nextPage() {
    if (currentPageIndex.value == 1) {
      // ✅ since you only have 2 pages (0, 1)
      completeOnboarding();
    } else {
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }
}
