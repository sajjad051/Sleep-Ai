import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SetButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color background;
  final Color borderColor;
  final Color shadowColor;
  final VoidCallback onPressed;
  const SetButton({super.key, required this.height, required this.width, required this.text, required this.background, required this.shadowColor, required this.onPressed, required this.borderColor});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding:  EdgeInsets.only(
          left: 30.w, right: 30.w, bottom: 3.h, top: 4.h),
      child: InkWell(
        onTap: onPressed,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            color: background,
            borderRadius:  BorderRadius.all(Radius.circular(40.0.r)),
            border: Border.all(
              color: borderColor,
            ),
          ),
          child: Material(
            color: Colors.transparent,
            child: Center(
              child: Text(
                text,
                style:  GoogleFonts.inter(
                    fontSize: 11.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }

}
