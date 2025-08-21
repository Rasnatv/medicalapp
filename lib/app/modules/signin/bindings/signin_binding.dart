
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/bindings_interface.dart';
import 'package:innsouls_flutter/app/modules/signin/controllers/signincontroller.dart';
import 'package:innsouls_flutter/app/modules/signup/controller/signupcontroller.dart';

class SigninBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SignInController>(
          () => SignInController(),
    );
  }
}