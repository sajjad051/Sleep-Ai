import 'package:ai_sleep/Records/circular_mini_progress_widget.dart';
import 'package:ai_sleep/Records/custom_bar_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class Sleepquality extends StatelessWidget {
  const Sleepquality({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 391.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(0xFF061238), // Background color
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding:
             EdgeInsets.only(top: 31.h, left: 15.w, right: 15.w, bottom: 22.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sleep Quality",
              style: GoogleFonts.inter(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
            CustomBarChart(),
            SizedBox(height: 21.h),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/sleep/moon_star.svg",
                  // fit: BoxFit.cover,
                  height: 13.03.h,
                  width: 11.w,
                  color: Color(0xFF848BBD),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "22:40",
                  style: GoogleFonts.inter(
                      color: Color(0xFF848BBD),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w700),
                ),
                Spacer(),
                SvgPicture.asset(
                  "assets/sleep/sun.svg",
                  // fit: BoxFit.cover,
                  height: 13.02.h,
                  width: 11.w,
                  color: Color(0xFF848BBD),
                ),
                SizedBox(
                  width: 8.w,
                ),
                Text(
                  "09:22",
                  style: GoogleFonts.inter(
                      color: Color(0xFF848BBD),
                      fontSize: 11.sp,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            SizedBox(height: 16.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularMiniProgressWidget(
                      percentage: 65,
                      progressColor: Color(0xFFFDFF88),
                      BackgroundColor: Color(0xFF020825),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          height: 8.h,
                          width: 8.w,
                          // color: Color(0xFFFDFF88),
                          decoration: BoxDecoration(
                              color: Color(0xFFFDFF88),
                              borderRadius: BorderRadius.circular(2.r)
                          ),
                        ),
                        SizedBox(width: 7.w,),
                        Text(
                          "Awake",
                          style: GoogleFonts.inter(
                              color: Color(0xFF848BBD),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                     Row(
                      children: [
                        Text(
                          "2",
                          style: GoogleFonts.inter(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "h",
                          style: GoogleFonts.inter(color: Color(0xFF848BBD), fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "18",
                          style: GoogleFonts.inter(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "min",
                          style: GoogleFonts.inter(color: Color(0xFF848BBD), fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularMiniProgressWidget(
                      percentage: 45,
                      progressColor: Color(0xFF00F2FE),
                      BackgroundColor: Color(0xFF020825),
                    ),

                    Row(
                      children: [
                        Container(
                          height: 8.h,
                          width: 8.w,
                         // color: Color(0xFFFDFF88),
                          decoration: BoxDecoration(
                            color: Color(0xFF00F2FE),
                            borderRadius: BorderRadius.circular(2.r)
                          ),
                        ),
                        SizedBox(width: 7.w,),
                        Text(
                          "Light",
                          style: GoogleFonts.inter(
                              color: Color(0xFF848BBD),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                     Row(
                      children: [
                        Text(
                          "2",
                          style: GoogleFonts.inter(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "h",
                          style: GoogleFonts.inter(color: Color(0xFF848BBD), fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "18",
                          style: GoogleFonts.inter(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "min",
                          style: GoogleFonts.inter(color: Color(0xFF848BBD), fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularMiniProgressWidget(
                      percentage: 80,
                      progressColor: Color(0xFFFF759F),
                      BackgroundColor: Color(0xFF020825),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 8.h,
                          width: 8.w,
                          // color: Color(0xFFFDFF88),
                          decoration: BoxDecoration(
                              color: Color(0xFFFF759F),
                              borderRadius: BorderRadius.circular(2.r)
                          ),
                        ),
                        SizedBox(width: 7.w,),
                        Text(
                          "Deep",
                          style: GoogleFonts.inter(
                              color: Color(0xFF848BBD),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                     Row(
                      children: [
                        Text(
                          "2",
                          style: GoogleFonts.inter(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "h",
                          style: GoogleFonts.inter(color: Color(0xFF848BBD), fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "18",
                          style: GoogleFonts.inter(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "min",
                          style: GoogleFonts.inter(color: Color(0xFF848BBD), fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircularMiniProgressWidget(
                      percentage: 50,
                      progressColor: Color(0xFF93BF0E),
                      BackgroundColor: Color(0xFF020825),
                    ),
                    Row(
                      children: [
                        Container(
                          height: 8.h,
                          width: 8.w,
                          // color: Color(0xFFFDFF88),
                          decoration: BoxDecoration(
                              color: Color(0xFFCFF068),
                              borderRadius: BorderRadius.circular(2.r)
                          ),
                        ),
                        SizedBox(width: 7.w,),
                        Text(
                          "Reem",
                          style: GoogleFonts.inter(
                              color: Color(0xFF848BBD),
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          "2",
                          style: GoogleFonts.inter(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "h",
                          style: GoogleFonts.inter(color: Color(0xFF848BBD), fontSize: 12.sp),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Text(
                          "18",
                          style: GoogleFonts.inter(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "min",
                          style: GoogleFonts.inter(color: Color(0xFF848BBD), fontSize: 12.sp),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
