import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Home/Widget/navigation_controller.dart';
import '../Route/Routes.dart';

class Sleep2 extends StatelessWidget {
  const Sleep2({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for the alarms
    final List<String> alarms = [
      "07:00 ",
      "08:00 ",
      "09:00 ",
      "10:00 ",
      "11:00 ",
      "12:00 ",
    ];
    final List<String> weekDays = [
      "weekdays",
      "Mon Tue Wed",
      "Fri Sat",
      "Sat Sun Mon Tue Wed",
      "Friday AM",
      "12:00 PM",
    ];
    final List<bool> Status = [
      false,
      false,
      false,
      false,
      true,
    ];

    return Scaffold(
      // bottomNavigationBar: CustomBottomButtom(),
      backgroundColor: Color(0xFF020825),
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/sleep/SleepTwo.webp",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: 36.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 24.w, left: 24.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.find<NavigationController>().clickStartTrack.value = 0;
                            },
                            child: SvgPicture.asset(
                              "assets/sleep/ic_ar_back.svg",
                              height: 32.h,
                              width: 32.w,
                            ),
                          ),
                          SizedBox(width: 21.w),
                          Text(
                            "Alarm",
                            style: GoogleFonts.inter(
                              color: Color(0xFF020825),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {
                          Get.find<NavigationController>().clickStartTrack.value = 2;
                        },
                        child: SvgPicture.asset(
                          "assets/sleep/plusBtn.svg",
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 33.h,left: 31.w, right: 17.w),
                  child: Container(
                    padding: EdgeInsets.all(16.r),
                    decoration: BoxDecoration(
                      color: Color(0xFF020825).withOpacity(.6),
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black12,
                          blurRadius: 5,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:  EdgeInsets.only(top: 16.h, bottom: 13.h),
                      child: Column(
                        children: List.generate(
                          alarms.length > 5 ? 5 : alarms.length,
                              (index) {
                            return Column(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          alarms[index],
                                          style: GoogleFonts.inter(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.w700
                                          ),
                                        ),
                                        SizedBox(height: 5.h),
                                        Text(
                                          weekDays[index],
                                          style: GoogleFonts.inter(
                                            color: Color(0xFFFFFFFF),
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w400
                                          ),
                                        ),
                                      ],
                                    ),

                                    Row(
                                      children: [
                                        Transform.scale(
                                          scale: .8,
                                          child: Switch(
                                            value: Status[index],
                                            onChanged: (value) {
                                              // Handle switch toggle
                                            },
                                            inactiveTrackColor: Colors.transparent,
                                            inactiveThumbColor: Color(0xFFFFFFFF),
                                           // trackOutlineColor: Colors.white,
                                          ),
                                        ),
                                        IconButton(
                                          icon: Icon(Icons.more_vert, color: Color(0xFFFFFFFF)),
                                          constraints: BoxConstraints(
                                            minWidth: 2.73.w, // Set your desired width
                                            minHeight: 15.h, // Set your desired height
                                          ),
                                          onPressed: () {
                                            // Handle more options
                                          },
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                // Add Divider between alarms, but not after the last one
                                if (index < (alarms.length > 5 ? 5 : alarms.length) - 1)
                                  Divider(
                                    color: Color(0xFFFFFFFF).withOpacity(.1),
                                    thickness: 1,
                                  ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ],

            ),
          ),
        ],
      ),
    );
  }
}

// import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import '../Home/Widget/alarm_tile.dart';
// //import '../Home/controler/alarm_controller.dart'; // Adjust import path to your actual controller
// import '../Home/controler/sleep1_coltroler.dart';
// import '../Home/controler/sleep2_controler.dart';
// import '../Route/Routes.dart';
//
// class Sleep2 extends StatelessWidget {
//   Sleep2({super.key});
//
//   final AlarmController alarmController = Get.put(AlarmController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           SizedBox(
//             height: double.infinity,
//             width: double.infinity,
//             child: Image.asset(
//               "assets/sleep/sleep_bg.webp",
//               fit: BoxFit.cover,
//             ),
//           ),
//           Obx(
//               () => Padding(
//               padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Top Row
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Image.asset("assets/sleep/Vector.webp"),
//                           SizedBox(width: 20),
//                           Text(
//                             "Alarm",
//                             style: TextStyle(
//                               color: Color(0xFF020825),
//                               fontSize: 16,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                         ],
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Get.toNamed(Routes.sleep3);
//                         },
//                         child: SvgPicture.asset(
//                           "assets/sleep/plusBtn.svg",
//                           height: 23.5,
//                           width: 23.5,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 40),
//                   // Alarm List Container
//                    SizedBox(
//                       height: Get.height * .52, // Set a specific height for the ListView
//                      width: Get.width,
//                       child: ListView.builder(
//                         itemCount: alarmController.alarms.length,
//                         itemBuilder: (context, index) {
//                           final alarm = alarmController.alarms[index];
//                           return AlarmTile(
//                             alarm: alarm,
//                             onToggle: (value) => alarmController.toggleAlarm(index),
//                           );
//                         },
//                       ),
//                     ),
//
//                   Spacer(),
//                   // Bottom Row of Icons
//                  CustomBottomButtom(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
