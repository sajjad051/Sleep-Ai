import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:ai_sleep/Sleep/controler/wheelPicker.dart';
import 'package:ai_sleep/Sleep/controler/sleep_days_name.dart';
import 'package:ai_sleep/Sleep/time_sleep.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Home/Widget/navigation_controller.dart';
import '../Route/Routes.dart';
import '../core/usecase/app_color.dart';
import '../widget/custom_button.dart';

class Sleep3 extends StatelessWidget {
  const Sleep3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/sleep/sleep_bg.webp",
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,

          body: Padding(
            padding: EdgeInsets.only(left: 24.h, right: 24.w, top: 58.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        InkWell(
                          onTap: () {
                            Get.find<NavigationController>().clickStartTrack.value = 1;
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
                          style: TextStyle(
                            color: Color(0xFF020825),
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        //   Get.toNamed(Routes.sleep3);
                      },
                      child: SvgPicture.asset(
                        "assets/sleep/sveBtn.svg",
                        height: 24.h,
                        width: 24.w,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 80.h),
                // TimePickerScreen(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SleepDaysName(day: "Sat", onPressed: (){
          
                    }),
                    SleepDaysName(day: "Sun", onPressed: (){
          
                    }),
                    SleepDaysName(day: "Mon", onPressed: (){
          
                    }),
                    SleepDaysName(day: "Tue", onPressed: (){
          
                    }),
                    SleepDaysName(day: "Wed", onPressed: (){
          
                    }),SleepDaysName(day: "Thu", onPressed: (){
          
                    }),
                    SleepDaysName(day: "Fri", onPressed: (){
          
                    }),
          
          
          
          
                  ],
                ),
                SizedBox(
                  height: 35.25.h,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.test);
                  },
                  child: Container(
                    height: 86.h,
                    width: Get.width,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF020825)),
                        //color: Color(0x19B9C4FB)),
                        color: Color(0xFF020825).withOpacity(.6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: 4, top: 4, bottom: 4),
                              child: Container(
                                width: 78.w,
                                height: 78.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(color: Color(0xFF020825)),
                                    //color: Color(0x19B9C4FB)),
                                    color: Color(0xFF020825)),
                                child: Image.asset(
                                  "assets/sleep/music.jpg", // Use Image.asset for JPG or PNG images
                                  height: 78.h,
                                  width: 78.h,
                                  fit: BoxFit.contain,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding:  EdgeInsets.only(
                                    left: 18.w,
                                    top: 14.h,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Better sleep",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                      SizedBox(
                                        height: 18.h,
                                      ),
                                      Text(
                                        "Better sleep",
                                        style: TextStyle(
                                            fontSize: 14.sp,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding:  EdgeInsets.only(right: 29.w),
                          child: SvgPicture.asset(
                            "assets/sleep/playBtn.svg",
                            height: 40.h,
                            width: 40.w,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Spacer(),
                CustomButton(
                    height: 50.h,
                    width: Get.width,
                    text: "Save",
                    background: Color(0xFF7D50FF),
                    shadowColor: Color(0xFF7D50FF),
                    onPressed: () {
                      Get.find<NavigationController>().clickStartTrack.value = 0;
                    }),
                // Spacer(),
                SizedBox(height: 25),
          
          
                // WheelPickerExample(),
              ],
            ),
          ),
        )
      ],
    );
  }
}
