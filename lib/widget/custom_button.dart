import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  final double height;
  final double width;
  final String text;
  final Color background;
  final Color? shadowColor; // Optional shadow color
  final Color? textColor; // Optional text color
  final double? fontSize; // Optional font size
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.height,
    required this.width,
    required this.text,
    required this.background,
    this.shadowColor, // Optional shadow color
    this.textColor, // Optional text color
    this.fontSize, // Optional font size
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: background,
        borderRadius: BorderRadius.all(Radius.circular(40.0)),
        boxShadow: <BoxShadow>[
          if (shadowColor != null) // Only add BoxShadow if shadowColor is not null
            BoxShadow(
              color: shadowColor!.withOpacity(0.3),
              blurRadius: 18.r,
              offset: Offset(4, 4),
              spreadRadius: 0,
            )
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.all(Radius.circular(40.0.r)),
          highlightColor: Colors.transparent,
          onTap: onPressed,
          child: Center(
            child: Text(
              text,
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: fontSize ?? 16.sp, // Use default if fontSize is null
                color: textColor ?? Colors.white, // Use default if textColor is null
                height: 2.6.h,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
