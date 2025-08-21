import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/style/app_text_style.dart';

class DHeadinetitle extends StatelessWidget {
  const  DHeadinetitle({super.key, required this.headtext,
    this.buttontitle="viewall", this.onpressed, this.textcolor, this.showactonButton=true,  this.count});
  final String headtext,buttontitle;
  final  void Function()? onpressed;
  final Color? textcolor;
  final bool showactonButton;
  final Double? count;

  @override
  Widget build(BuildContext context) {
    return  Padding(padding: EdgeInsets.only(left: 0),
        child: Column(children: [
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(headtext,
                  style: AppTextStyle.rtextpoppinsBlack17w700 ),
                if (count != null) Text(count.toString()),
                if(showactonButton) TextButton(onPressed:onpressed, child:Text(buttontitle, style: TextStyle(
                    fontSize: 14.sp, color: Colors.blue))
                ),
              ])]) );


  }}
