import'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:innsouls_flutter/app/modules/signup/controller/signupcontroller.dart';

import '../../../common/style/app_text_style.dart';
class Termsandcondition extends GetView<SignUpController> {
  const Termsandcondition({super.key});

  @override
  Widget build(BuildContext context) {
    return  Obx(() => Row(
      children: [
        Checkbox(
          focusColor: Colors.black12,
          value: controller.isAgreed.value,
          onChanged: controller.toggleAgreement,
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              text: "I agree to the healthcare ",
              style: AppTextStyle.rtextpoppinsBlack12w400 ,
              children: [
                TextSpan(
                  text: "Terms of Service",
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
                const TextSpan(text: " and "),
                TextSpan(
                  text: "Privacy Policy",
                  style: const TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
