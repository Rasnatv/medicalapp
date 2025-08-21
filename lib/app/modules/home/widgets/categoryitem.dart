import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innsouls_flutter/app/modules/home/widgets/DCircularContainer.dart';

import '../../../common/style/app_colors.dart';
import '../../../common/style/app_text_style.dart';
class Categoryitem extends StatelessWidget {
  const Categoryitem({super.key, this.icon, this.title});
  final IconData ?icon;
  final String?title;

  @override
  Widget build(BuildContext context) {
    return Column(
            children: [
              DcircularContainer(
                width: 40,
                  height: 40,
                  radius: 50.r,backgroundcolor: AppColors.containerblue,
        child:Icon(icon, color: Colors.white, size: 20.sp)),
              SizedBox(height: 8.h),
              Text(title!,
                  style: AppTextStyle. rtextpoppinsBlack13wnormal),
            ],
          );

        }
  }
