import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:iconsax/iconsax.dart';
import 'package:innsouls_flutter/app/modules/signup/widget/termsandcondition.dart';

import '../../../common/style/app_text_style.dart';
import '../../../common/style/dimens.dart';
import '../../landing_screen/controllers/landing_controller.dart';
import '../../landing_screen/views/landing_view.dart';
import '../controller/signupcontroller.dart';
class Signupform extends GetView<SignUpController>{
  const Signupform({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: controller.nameController,
          decoration:  InputDecoration(
            prefixIcon: Icon(Iconsax.user), hintText: "Enter your name",
          ),),
        Dimens.kSizedBoxH20,

        TextFormField(
          controller: controller.emailController,
          keyboardType: TextInputType.emailAddress,
          decoration:  InputDecoration(prefixIcon: Icon(Iconsax.card5), hintText: "Enter your email",
          ),),
        Dimens.kSizedBoxH20,

        Obx(() => TextFormField(
          controller: controller.passwordController,
          obscureText: controller.isPasswordHidden.value,
          decoration: InputDecoration(
            prefixIcon: const Icon(Icons.lock), hintText: "Enter your password",
            suffixIcon: IconButton(
              icon: Icon(controller.isPasswordHidden.value
                  ? Icons.visibility_off
                  : Icons.visibility),
              onPressed: controller.togglePassword,
            ),
          ),
        )),
        const SizedBox(height: 16),

        // Terms Checkbox
        Termsandcondition(),

        SizedBox(height:MediaQuery.sizeOf(context).height/3),

        SizedBox(width:350.w,height: 60.h,child:ElevatedButton(onPressed:(){
          Get.put(LandingController()); // <-- Ensure controller is initialized
          Get.to(() => LandingView());
        }  ,child: Text("Signup")),),
        Dimens.kSizedBoxH20,

    ],),
    );
  }
}
