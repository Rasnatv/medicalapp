import 'package:flutter/material.dart';

class DImage extends StatelessWidget {
  const DImage({
    super.key,
    required this.imagePath,
    this.width,
    this.height,
    this.borderRadius = 0,
    this.fit = BoxFit.cover,
  });

  final String imagePath;
  final double? width;
  final double? height;
  final double borderRadius;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(borderRadius),
      child: Image.asset(
        imagePath,
        width: width,
        height: height,
        fit: fit,
      ),
    );
  }
}
