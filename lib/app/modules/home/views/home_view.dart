
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:innsouls_flutter/app/common/style/dimens.dart';
import 'package:innsouls_flutter/app/modules/home/widgets/DCircularContainer.dart';
import 'package:innsouls_flutter/app/modules/home/widgets/categoryitem.dart';
import 'package:innsouls_flutter/app/widgets/dismiss_keyboard_widget.dart';
import '../../../common/constants/app_images.dart';
import '../controllers/home_controller.dart';
import '../widgets/articles.dart';
import '../widgets/headerapart.dart';
import '../widgets/headlinetitle.dart';
import '../widgets/home_search_field.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Get.isRegistered<HomeController>()) {
      Get.put(HomeController());
    }
    return DismissKeyboard(
        child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  children: [
                    Stack(children: [
                      HeaderSection(),
                      Positioned(
                        child: DcircularContainer(width: double.infinity,
                          padding: 16,
                          margin: EdgeInsets.only(top: 250),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30),),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              HomeSearchFiled(),
                              SizedBox(height: 20.h),

                              Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
                                children: [
                                  Categoryitem(icon: Icons.local_hospital,
                                      title: "Top Doctors"),
                                  Categoryitem(icon: Icons.medical_services,
                                      title: "Pharmacy"),
                                  Categoryitem(icon: Icons.local_shipping,
                                      title: "Ambulance")
                                ],
                              ),
                              SizedBox(height: 25.h),
                              DHeadinetitle(headtext: "Health article"),
                              SizedBox(height: 12.h),

                              ListView.separated(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  separatorBuilder:(context, index) => Dimens.kSizedBoxH20,
                              itemCount: 5,
                              itemBuilder:(_,index)
                            {
                              return Articles(title: "The Impact of COVID-19 on Healthcare Systems",
                                date: "Jul 10, 2023", time:"5min read",imagepath: AppImages.doctor1,);
                            }
                              )
                         ],
                          ),
                        ),

                      )
                    ])
                  ]),
            )
        )

    );
  }
}

