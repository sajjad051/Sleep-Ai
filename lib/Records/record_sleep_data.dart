import 'package:ai_sleep/Records/sleep_data_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class RecordSleepData extends StatelessWidget {
  const RecordSleepData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 273.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(0xFF061238), // Background color
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding:
            EdgeInsets.only(top: 27.h, left: 15.w, right: 42.w, bottom: 22.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sleep Data",
              style: GoogleFonts.inter(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.only(top: 29.h, left: 15.w),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SleepDataWidget(
                        image: "assets/sleep/moon_star.svg",
                        title: "Sleep at",
                        time: "10:40",
                        height: 15,
                        width: 15,
                      ),
                      SizedBox(height: 17.5.h,),
                      SleepDataWidget(
                        image: "assets/sleep/ic_SD.svg",
                        title: "Sleep Duration",
                        time: "7h 18min",
                        height: 14,
                        width: 14,
                      ),
                      SizedBox(height: 17.5.h,),
                      SleepDataWidget(
                        image: "assets/sleep/ic_SN.svg",
                        title: "Ambient Noise",
                        time: "74db",
                        height: 16,
                        width: 16,
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SleepDataWidget(
                        image: "assets/sleep/sun.svg",
                        title: "Wake at",
                        time: "09:12",
                        height: 15,
                        width: 15,
                      ),
                      SizedBox(height: 17.5.h,),
                      SleepDataWidget(
                        image: "assets/sleep/ic_SA.svg",
                        title: "Sleep After",
                        time: "30min",
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(height: 17.5.h,),
                      SleepDataWidget(
                        image: "assets/sleep/ic_rem.svg",
                        title: "Rem",
                        time: "40min",
                        height: 18,
                        width: 18,
                      ),
                    ],
                  ),
                ],
              ),
            )
            // SizedBox(height: 10.h),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 37),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       SvgPicture.asset(
            //         "assets/sleep/moon_star.svg",
            //         // fit: BoxFit.cover,
            //         height: 18.93,
            //         width: 16,
            //         color: Color(0xFF848BBD),
            //       ),
            //       SizedBox(
            //         width: 8,
            //       ),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Wake at",
            //             style: TextStyle(
            //                 color: Color(0xFF848BBD),
            //                 fontSize: 12,
            //                 fontWeight: FontWeight.w400),
            //           ),
            //           SizedBox(
            //             height: 5,
            //           ),
            //           Text(
            //             "09:40",
            //             style: TextStyle(
            //                 color: Color(0xFFFFFFFF),
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w500),
            //           ),
            //         ],
            //       ),
            //       Spacer(),
            //       SleepDataWidget(image: "assets/sleep/sun.svg", title: "Sleep Duration", time: "7h 18min"),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10),
            // Padding(
            //   padding: const EdgeInsets.symmetric(horizontal: 20),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //     children: [
            //       SvgPicture.asset(
            //         "assets/sleep/moon_star.svg",
            //         // fit: BoxFit.cover,
            //         height: 18.93,
            //         width: 16,
            //         color: Color(0xFF848BBD),
            //       ),
            //       SizedBox(
            //         width: 8,
            //       ),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Sleep Duration",
            //             style: TextStyle(
            //                 color: Color(0xFF848BBD),
            //                 fontSize: 12,
            //                 fontWeight: FontWeight.w400),
            //           ),
            //           SizedBox(
            //             height: 5,
            //           ),
            //           Text(
            //             "7h 18min",
            //             style: TextStyle(
            //                 color: Color(0xFFFFFFFF),
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w500),
            //           ),
            //         ],
            //       ),
            //       Spacer(),
            //       SvgPicture.asset(
            //         "assets/sleep/sun.svg",
            //         // fit: BoxFit.cover,
            //         height: 18.93,
            //         width: 16,
            //         color: Color(0xFF848BBD),
            //       ),
            //       SizedBox(
            //         width: 8,
            //       ),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Sleep After",
            //             style: TextStyle(
            //                 color: Color(0xFF848BBD),
            //                 fontSize: 12,
            //                 fontWeight: FontWeight.w400),
            //           ),
            //           SizedBox(
            //             height: 5,
            //           ),
            //           Text(
            //             "30min",
            //             style: TextStyle(
            //                 color: Color(0xFFFFFFFF),
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w500),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
            // SizedBox(height: 10.h),
            // Padding(
            //   padding: const EdgeInsets.only(left: 20, right: 39),
            //   child: Row(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       SvgPicture.asset(
            //         "assets/sleep/moon_star.svg",
            //         // fit: BoxFit.cover,
            //         height: 18.93,
            //         width: 16,
            //         color: Color(0xFF848BBD),
            //       ),
            //       SizedBox(
            //         width: 8,
            //       ),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Ambient Noise",
            //             style: TextStyle(
            //                 color: Color(0xFF848BBD),
            //                 fontSize: 12,
            //                 fontWeight: FontWeight.w400),
            //           ),
            //           SizedBox(
            //             height: 5,
            //           ),
            //           Text(
            //             "74db",
            //             style: TextStyle(
            //                 color: Color(0xFFFFFFFF),
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w500),
            //           ),
            //         ],
            //       ),
            //       Spacer(),
            //       SvgPicture.asset(
            //         "assets/sleep/sun.svg",
            //         // fit: BoxFit.cover,
            //         height: 18.93,
            //         width: 16,
            //         color: Color(0xFF848BBD),
            //       ),
            //       SizedBox(
            //         width: 8,
            //       ),
            //       Column(
            //         crossAxisAlignment: CrossAxisAlignment.start,
            //         children: [
            //           Text(
            //             "Rem",
            //             style: TextStyle(
            //                 color: Color(0xFF848BBD),
            //                 fontSize: 12,
            //                 fontWeight: FontWeight.w400),
            //           ),
            //           SizedBox(
            //             height: 5,
            //           ),
            //           Text(
            //             "40min",
            //             style: TextStyle(
            //                 color: Color(0xFFFFFFFF),
            //                 fontSize: 14,
            //                 fontWeight: FontWeight.w500),
            //           ),
            //         ],
            //       ),
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
