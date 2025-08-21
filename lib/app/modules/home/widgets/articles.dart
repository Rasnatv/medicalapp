// import 'dart:core';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../../../common/constants/app_images.dart';
// import '../../../common/style/app_text_style.dart';
// class Articles extends StatelessWidget {
//   const Articles({super.key, this.title, this.date, this.time, this.imagepath  });
//   final String? title;
//   final String ? date;
//   final String?time;
//   final String? imagepath;
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(12.r),
//           border: Border.all(color: Colors.grey.shade300),
//         ),
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Padding(padding: EdgeInsets.all(5),child:
//             Container(
//                 height: 70.h,width: 70.h,decoration:BoxDecoration(
//               borderRadius: BorderRadius.circular(15),
//                 image: DecorationImage(image: AssetImage(AppImages.doctor1),fit: BoxFit.cover))),
//       ),
//             Expanded(
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                    crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Row(children: [
//                      Expanded(child:
//                     Text(title!,
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                         style: AppTextStyle. rtextpoppinsBlack12w400 ),),
//                       IconButton(
//                           onPressed: () {},
//                           icon: Icon(Icons.bookmark_border, color: Colors.blue))
//                     ]),
//                     SizedBox(height:2),
//                     Text("$date   •   $readTime",
//                         style: TextStyle(fontSize: 12.sp, color: Colors.grey)),
//                   ],
//                 ),
//               ),
//            // ),
//
//
//             ],
//         ),
//
//   }
// }
import 'dart:core';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../common/constants/app_images.dart';
import '../../../common/style/app_text_style.dart';

class Articles extends StatelessWidget {
  const Articles({
    super.key,
    this.title,
    this.date,
    this.time,
    this.imagepath,
  });

  final String? title;
  final String? date;
  final String? time;
  final String? imagepath;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          // ✅ Article Image
          Padding(
            padding: const EdgeInsets.all(5),
            child: Container(
              height: 70.h,
              width: 70.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                  image: AssetImage(imagepath ?? AppImages.doctor1),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),

          // ✅ Article Details
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        title ?? "",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: AppTextStyle.rtextpoppinsBlack12w400,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.bookmark_border,
                          color: Colors.blue),
                    )
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  "${date ?? ''}   •   ${time ?? ''}",
                  style: TextStyle(fontSize: 12.sp, color: Colors.grey),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
