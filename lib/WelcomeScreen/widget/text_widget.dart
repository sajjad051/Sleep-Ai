import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePageTextWidget extends StatelessWidget {
  final String title;
  final String description;
  const WelcomePageTextWidget({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
        textAlign:TextAlign.center,
          style: welcomeTextLarge(),
        ),
         SizedBox(height: 20.h),
        Text(
          description,
          textAlign: TextAlign.center,
          style: GoogleFonts.inter(fontSize: 14.sp, color: Color(0xFF848BBD)),
        )
      ],
    );
  }
}
