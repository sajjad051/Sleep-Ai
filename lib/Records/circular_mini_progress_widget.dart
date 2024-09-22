import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularMiniProgressWidget extends StatelessWidget {
  final double percentage;
  final Color progressColor;
  final Color BackgroundColor;

  CircularMiniProgressWidget(
      {required this.percentage,
      required this.progressColor,
      required this.BackgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.width * .3.w,
      width: 54.w,
      child: CircularPercentIndicator(
        radius: Get.width * .09,
        lineWidth: 11.5.w,
        animation: true,
        percent: percentage / 100,
        center: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "${percentage.toInt()}",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w500,
                fontSize: 14.0.sp,
                color: Colors.white,
                // White text color
              ),
            ),
            Text(
              "%",
              style: GoogleFonts.inter(
                fontWeight: FontWeight.w400,
                fontSize: 5.77.sp,
                color: Colors.white,
                // White text color
              ),
            ),
          ],
        ),
        circularStrokeCap:
            CircularStrokeCap.round, // Round edges for progress bar
        progressColor: progressColor,
        // const Color(0xFF7D50FF), // The color of the progress bar
        backgroundColor: BackgroundColor,
        // const Color(0xFF020825), // The color of the background arc
      ),
    );
  }
}
