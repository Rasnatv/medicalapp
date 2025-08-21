
import'package:flutter/material.dart';
import 'package:innsouls_flutter/app/common/constants/text_String.dart';
import 'package:innsouls_flutter/app/modules/home/widgets/DCircularContainer.dart';

import '../../../common/constants/app_images.dart';
import '../../../common/style/app_text_style.dart';
import '../../../common/style/dimens.dart';
class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return   DcircularContainer(
      width: double.infinity, height: 300, backgroundcolor: Colors.blue.shade50, padding: 25,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Dtexts.headertext1, style: AppTextStyle.rtextpoppinsBlack17w700),
                Text(Dtexts.headertext2, style: AppTextStyle.rtextpoppinsBlack16w400),
                Dimens.kSizedBoxH30,
                Text(Dtexts.headertext3, maxLines: 1, style: AppTextStyle.rTextpoppinslightgrey12w000 ,
                ),
              ],
            ),
          ),

          ClipRRect(
            child: Image.asset(
              AppImages.doctor,width: 200,height: 230,fit: BoxFit.fitHeight,
            ),

          )

        ],
      ),
    );
  }
}
