import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';
import 'package:innsouls_flutter/app/modules/signup/widget/signupform.dart';

import '../../../common/style/app_text_style.dart';
import '../../../common/style/dimens.dart';
import '../../landing_screen/controllers/landing_controller.dart';
import '../../landing_screen/views/landing_view.dart';
import '../controller/signupcontroller.dart';
import '../widget/termsandcondition.dart';

class SignUpView extends StatelessWidget {
  final SignUpController controller = Get.put(SignUpController());

  SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Get.back(),
        ),
        title:  Text("Sign Up", style:AppTextStyle.rtextpoppinsBlack18w800 ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Signupform(),

          ],
        ),
      ),
    );
  }
}
