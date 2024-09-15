import 'package:ai_sleep/Records/progress_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class ProgressWidget extends StatelessWidget {
  const ProgressWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 201.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(0xFF061238), // Background color
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircularProgressWidget(percentage: 70),
          Padding(
            padding:  EdgeInsets.only(left: 40.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                 Text(
                  "Time Asleep",
                  style: TextStyle(color: Color(0xFF848BBD), fontSize: 12.sp),
                ),
                 Row(
                  children: [
                    Text(
                      "8",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "h",
                      style: TextStyle(color: Color(0xFF848BBD), fontSize: 12.sp),
                    ),
                    SizedBox(
                      width: 8.h,
                    ),
                    Text(
                      "40",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700),
                    ),
                    Text(
                      "min",
                      style: TextStyle(color: Color(0xFF848BBD), fontSize: 12.sp),
                    ),
                  ],
                ),
                 Text("Time in Bed",
                    style: TextStyle(
                        color: Color(0xFF848BBD),
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400)),
                 SizedBox(height: 15.h,),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/sleep/moon_star.svg",
                      // fit: BoxFit.cover,
                      height: 18.93.h,
                      width: 16.w,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      "22:40",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
                 SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/sleep/sun.svg",
                      // fit: BoxFit.cover,
                      height: 18.93.h,
                      width: 16.w,
                    ),
                    SizedBox(
                      width: 8.h,
                    ),
                    Text(
                      "09:22",
                      style: TextStyle(
                          color: Color(0xFFFFFFFF),
                          fontSize: 16.h,
                          fontWeight: FontWeight.w700),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Spacer(),
        ],
      ),
    );
  }
}
