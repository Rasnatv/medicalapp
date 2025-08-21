

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innsouls_flutter/app/common/style/app_text_style.dart';

import '../../../common/style/dimens.dart';

class OnBoarding extends StatelessWidget {
  String image,text1;
  OnBoarding({required this.image,required this.text1});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
          width:MediaQuery.of(context).size.width*0.8,
     height: MediaQuery.of(context).size.height*0.6,
      decoration:BoxDecoration(image: DecorationImage(image: AssetImage(image),fit:BoxFit.cover)),),
          Dimens.kSizedBoxH30,
          Text(text1,style:AppTextStyle.rTextpoppinsBlack28w100 ,),
        ],
      ),
    );
  }
}
