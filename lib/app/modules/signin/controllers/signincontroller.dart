import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignInController extends GetxController {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var isPasswordHidden = true.obs;

  void togglePasswordVisibility() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void signIn() {
    // TODO: Add your authentication logic here
    Get.snackbar("Sign In", "Email: ${emailController.text}");
  }

  void googleSignIn() {
    // TODO: Google Sign-In integration
    Get.snackbar("Google", "Signing in with Google...");
  }

  void facebookSignIn() {
    // TODO: Facebook Sign-In integration
    Get.snackbar("Facebook", "Signing in with Facebook...");
  }
}
