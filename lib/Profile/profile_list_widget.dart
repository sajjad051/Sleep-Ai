import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ProfileListWidget extends StatelessWidget {

  String icon;
  final double height;
  final double width;
  final VoidCallback onPressed;
  String text;
   ProfileListWidget({super.key,required this.text, required this.width, required this.height, required this.onPressed, required this.icon});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed;
      },
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
            height: height,
            width: width,
          ),
          SizedBox(width: 21.41.w),
          Text(text,
              style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFFFFFFFF))),
        ],
      ),
    );
  }
}
