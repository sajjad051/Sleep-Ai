import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
            height: height.h,
            width: width.w,
            color: Color(0xFFFFFFFF).withOpacity(.8),
          ),
          SizedBox(width: 21.41.w),
          Text(text,
              style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                  color: Color(0xFFFFFFFF).withOpacity(.8))),
        ],
      ),
    );
  }
}
