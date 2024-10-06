import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_swipe_button/flutter_swipe_button.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SwipeBtn extends StatelessWidget {
  const SwipeBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return  SwipeButton(
        inactiveTrackColor: Colors.white,
        activeTrackColor: Color(0xFF7D50FF).withOpacity(.30),
        activeThumbColor: Colors.white,
        inactiveThumbColor: Colors.white,
        width: Get.width,
        height: 60.h,
        child: Text(
          "Slide to Stop",
          style: GoogleFonts.inter(
            color: Colors.white,
            fontSize: 16.sp, fontWeight: FontWeight.w500
          ),
        ),
        onSwipe: () {

        },
      );

  }
}
