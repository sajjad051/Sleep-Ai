import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SleepDataWidget extends StatelessWidget {
  final String image;
  final String title;
  final String time;
  double height;
  double width;

  SleepDataWidget(
      {super.key,
      required this.image,
      required this.title,
      required this.time,
      required this.height,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          image,
          // fit: BoxFit.cover,
          height: height.h,
          width: width.w,
          color: Color(0xFF848BBD),
        ),
        SizedBox(
          width: 8.w,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: GoogleFonts.inter(
                  color: Color(0xFF848BBD),
                  fontSize: 12.sp,
                  fontWeight: FontWeight.w400),
            ),
            SizedBox(
              height: 5.h,
            ),
            Text(
              time,
              style: GoogleFonts.inter(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ),
      ],
    );
  }
}
