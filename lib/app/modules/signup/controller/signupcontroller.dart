import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  // Controllers
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Reactive states
  var isPasswordHidden = true.obs;
  var isAgreed = false.obs;

  void togglePassword() {
    isPasswordHidden.value = !isPasswordHidden.value;
  }

  void toggleAgreement(bool? value) {
    isAgreed.value = value ?? false;
  }

  void signUp() {
    if (nameController.text.isEmpty ||
        emailController.text.isEmpty ||
        passwordController.text.isEmpty) {
      Get.snackbar("Error", "All fields are required");
      return;
    }

    if (!isAgreed.value) {
      Get.snackbar("Error", "You must agree to the Terms & Privacy Policy");
      return;
    }

    // TODO: API call for signup
    Get.snackbar("Success", "Account created successfully!");
  }
}
