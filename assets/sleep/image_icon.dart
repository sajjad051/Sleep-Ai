import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomImageIcon extends StatelessWidget {
  final String imagePath;
  final double size;

  const CustomImageIcon({
    Key? key,
    required this.imagePath,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      child: SvgPicture.asset(imagePath),
    );
  }
}
