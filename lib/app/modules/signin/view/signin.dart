import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:innsouls_flutter/app/modules/signin/controllers/signincontroller.dart';
import 'package:innsouls_flutter/app/modules/signin/widget/signinform.dart';
import 'package:innsouls_flutter/app/modules/signin/widget/socialmedia.dart';
import '../../../common/style/app_text_style.dart';
import '../../../common/style/dimens.dart';
class SigninView extends StatelessWidget {
  SigninView({super.key});
  final SignInController controller= Get.put(SignInController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new), onPressed: () => Get.back(),
          ),
          title:  Text("Sign in", style:AppTextStyle.rtextpoppinsBlack18w800 ),
          centerTitle: true,
        ),
        body: Padding(
        padding: const EdgeInsets.all(30.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Signinform(),
      Dimens.kSizedBoxH20,
            Center(
            child: GestureDetector(
            onTap: () {},
        child:  Text.rich(
    TextSpan(
    text: "Don’t have an account? ", style: AppTextStyle.rtextpoppinsBlack14w400 ,
    children: [
    TextSpan(
    text: "Sign up", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
    )])))),
     SizedBox(height: 50,),
      Row(
        children: const [
          Expanded(child: Divider()),
          Padding(padding: EdgeInsets.symmetric(horizontal: 8), child: Text("OR"),),
          Expanded(child: Divider()),
        ],
      ),
      Dimens.kSizedBoxH30,
      SocialMedia()
    ])));
  }
}
