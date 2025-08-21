import 'package:get/get.dart';
import 'package:innsouls_flutter/app/modules/getstatedpage/view/getstartedpage.dart';
import 'package:innsouls_flutter/app/modules/notification/bindings/notification_bindings.dart';
import 'package:innsouls_flutter/app/modules/notification/views/notificationView.dart';
import 'package:innsouls_flutter/app/modules/reports/bindings/reports_binding.dart';
import 'package:innsouls_flutter/app/modules/reports/views/reportsview.dart';
import 'package:innsouls_flutter/app/modules/signin/bindings/signin_binding.dart';
import 'package:innsouls_flutter/app/modules/signin/view/signin.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/landing_screen/bindings/landing_binding.dart';
import '../modules/landing_screen/views/landing_view.dart';
import '../modules/onboarding/bindings/onboardingbinding.dart';
import '../modules/onboarding/views/onboardingview.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';
import '../modules/signup/Bindings/Ssignup_binding.dart';
import '../modules/signup/view/Signup.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.ONBOARDING,
      page: () => const OnboardingView(),
      binding: Onboardingbinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignUpView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.LANDING,
      page: () => const LandingView(),
      binding: LandingBinding(),
     // bindings: [HomeBinding(),WishlistBinding()]
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REPORTS,
      page: () => const Reportsview(),
      binding: ReportsBinding()
    ),

    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.GETSTARTED,
      page: () => const Getstartedpage(),
      //binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding:NotificationBindings(),
    ),
    GetPage(
      name: _Paths.SIGNIN,
        page: () =>  SigninView(),
      binding:SigninBinding()
    ),
  ];
}
