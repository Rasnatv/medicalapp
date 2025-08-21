// import 'package:flutter/material.dart';
//
// class DcircularContainer extends StatelessWidget {
//      DcircularContainer({
//        this.child,
//        this.width ,
//        this. height ,
//        this.radius=0,
//        this.padding=0,
//        this.backgroundcolor=Colors.white,  this.margin,
//
//      } );
//    //final double? width;
//      final double? width;
//   final double? height;
//   final double radius;
//   final double  padding;
//   final Widget? child;
//   final Color backgroundcolor;
//   final EdgeInsets? margin;
//   @override
//   Widget build(BuildContext context) {
//     return  Container(
//       width: width,
//       height: height,
//       margin: margin,
//       padding:EdgeInsets.all(padding),
//       decoration: BoxDecoration(borderRadius: BorderRadius.circular(radius),
//           color: backgroundcolor),
//       child: child,
//     );
//   }
// }
import 'package:flutter/material.dart';

class DcircularContainer extends StatelessWidget {
  const DcircularContainer({
    super.key,
    this.child,
    this.width,
    this.height,
    this.radius = 0,
    this.borderRadius,
    this.padding = 0,
    this.backgroundcolor = Colors.white,
    this.margin,
  });

  final double? width;
  final double? height;
  final double radius; // fallback if borderRadius not given
  final BorderRadius? borderRadius; // ✅ new property
  final double padding;
  final Widget? child;
  final Color backgroundcolor;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      margin: margin,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        borderRadius: borderRadius ?? BorderRadius.circular(radius),
        color: backgroundcolor,
      ),
      child: child,
    );
  }
}
