import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:innsouls_flutter/app/modules/signin/controllers/signincontroller.dart';
import 'package:innsouls_flutter/app/modules/signup/controller/signupcontroller.dart';

import '../../../common/constants/text_String.dart';
import '../../../common/style/app_text_style.dart';
import '../../../common/style/dimens.dart';
class Signinform extends GetView<SignInController>{
  const Signinform({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(child: Column(children: [
      TextFormField(
        controller: controller.emailController,
        keyboardType: TextInputType.emailAddress,
        decoration:  InputDecoration(
          prefixIcon: Icon(Iconsax.card5), hintText: "Enter your email",
        ),),
      Dimens.kSizedBoxH20,

      Obx(() => TextFormField(
        controller: controller.passwordController,
        obscureText: controller.isPasswordHidden.value,
        decoration: InputDecoration(
          prefixIcon: const Icon(Icons.lock),
          hintText: "Enter your password",
          suffixIcon: IconButton(
            icon: Icon(controller.isPasswordHidden.value
                ? Icons.visibility_off: Icons.visibility),
            onPressed: controller.togglePasswordVisibility
          ),
        ),
      )),
      const SizedBox(height: 16),
      Row(children: [Spacer(),
        Text(Dtexts.Forgotpswd,style: AppTextStyle.rTextpoppinsBlue15w400 ),
      ],),
      SizedBox(height: 60),
      SizedBox(width:350.w,height: 60.h,child:ElevatedButton(onPressed:(){}  ,child: Text("Signin")),),

    ],));
  }
}
