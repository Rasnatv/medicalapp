
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:innsouls_flutter/app/common/constants/app_icons.dart';
import 'package:innsouls_flutter/app/common/style/app_colors.dart';
import 'package:innsouls_flutter/app/modules/landing_screen/controllers/landing_controller.dart';
import 'package:innsouls_flutter/app/modules/landing_screen/widgets/app_nav_item.dart';

class AppNavBar extends StatelessWidget {
  const AppNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(border: Border(top: BorderSide(color: AppColors.shimmerGray, width: 2.sp))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AppNavItem(iconPath: AppIcons.homeIcon, value: LandingItem.home, padding: EdgeInsets.only(left: 14.sp,), label: 'Home',),
            AppNavItem(iconPath: AppIcons.reportsicon, value: LandingItem.reports ,label: 'Reports',),
            AppNavItem(iconPath: AppIcons.notificationicon, value: LandingItem.notification, label: 'Notification',),
            AppNavItem(iconPath: AppIcons.profileIcon, value: LandingItem.profile,label: 'Profile',padding: EdgeInsets.only(right: 14.sp,),
            )],
        ),
      ),
    );
  }
}
