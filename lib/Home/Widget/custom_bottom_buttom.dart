import 'package:ai_sleep/Home/Widget/custom_bottom_button_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';

class CustomBottomButtom extends StatelessWidget {
   CustomBottomButtom({super.key});

   final CustomBottomButtonController controler = Get.put(CustomBottomButtonController());

  @override

  //bool isActive = false ;
  // bool isActives = false ;
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 85,
        width: Get.height,
        //padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: const Color(0xFF020825),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 20.h, vertical: 20.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Stack(
                //alignment: Alignment.center,
                children: [
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        boxShadow: [
                          BoxShadow(
                            color: controler.activeIndex.value  == 1 ? Color(0xFFF5E14A).withOpacity(.3) : Colors.transparent,
                            spreadRadius: 4,
                            blurRadius: 30,
                            offset: const Offset(0, 2), // Adjust the shadow position as needed
                          ),
                        ],
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.homeScreen);
                      controler.setActiveIndex(1);

                    },
                    //isActive?'assets/sleep/ic_home_active.svg':
                     child: controler.activeIndex.value  == 1 ?
                     Padding(
                       padding:  EdgeInsets.only(bottom: 8.h),
                       child: SvgPicture.asset(
                         "assets/sleep/homeGs.svg",
                         // fit: BoxFit.cover,
                         height: 38.h,
                         width: 38.w,
                       ),
                     ):
                     Padding(
                       padding: EdgeInsets.only(top: 8.0.h),
                       child: SvgPicture.asset(
                        "assets/sleep/Home.svg",
                        // fit: BoxFit.cover,
                        height: 24.h,
                        width: 24.w,
                                                 ),
                     ),
                  ),
                ]

                              ),
              Stack(
                //alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: controler.activeIndex.value  == 2 ? Color(0xFF7EFAFF).withOpacity(.3) : Colors.transparent,
                              spreadRadius: 4,
                              blurRadius: 30,
                              offset: const Offset(0, 2), // Adjust the shadow position as needed
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.sleep1);
                        controler.setActiveIndex(2);
                      },
                      //isActive?'assets/sleep/ic_home_active.svg':
                      child: controler.activeIndex.value  == 2 ?
                      Padding(
                        padding:  EdgeInsets.only(bottom: 12.h),
                        child: SvgPicture.asset(
                          "assets/sleep/moon_star.svg",
                          // fit: BoxFit.cover,
                          height: 30.h,
                          width: 30.w,
                        ),
                      ):
                      Padding(
                        padding:  EdgeInsets.only(top: 8.0.h),
                        child: SvgPicture.asset(
                          "assets/sleep/moon.svg",
                          // fit: BoxFit.cover,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ),
                  ]

              ),
              Stack(
                //alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: controler.activeIndex.value  == 3 ? Color(0xFF7EFAFF).withOpacity(.3) : Colors.transparent,
                              spreadRadius: 4,
                              blurRadius: 30,
                              offset: const Offset(0, 2), // Adjust the shadow position as needed
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.records);
                        controler.setActiveIndex(3);
                      },
                      //isActive?'assets/sleep/ic_home_active.svg':
                      child: controler.activeIndex.value  == 3 ?
                      Padding(
                        padding:  EdgeInsets.only(bottom: 10.h),
                        child: SvgPicture.asset(
                          "assets/sleep/record_star.svg",
                          // fit: BoxFit.cover,
                          height: 40.h,
                          width: 40.w,
                        ),
                      ):
                      Padding(
                        padding:  EdgeInsets.only(top: 8.0.h),
                        child: SvgPicture.asset(
                          "assets/sleep/records.svg",
                          // fit: BoxFit.cover,
                          height: 24.h,
                          width: 24.h,
                        ),
                      ),
                    ),
                  ]

              ),
              Stack(
                //alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: controler.activeIndex.value  == 4 ? Color(0xFF7EFAFF).withOpacity(.3) : Colors.transparent,
                              spreadRadius: 4,
                              blurRadius: 30,
                              offset: const Offset(0, 2), // Adjust the shadow position as needed
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.statistics);
                        controler.setActiveIndex(4);
                      },
                      //isActive?'assets/sleep/ic_home_active.svg':
                      child: controler.activeIndex.value  == 4 ?
                      Padding(
                        padding:  EdgeInsets.only(top: 4.h),
                        child: SvgPicture.asset(
                          "assets/sleep/Statictis_star.svg",
                          // fit: BoxFit.cover,
                          height: 36.h,
                          width: 36.w,
                        ),
                      ):
                      Padding(
                        padding:  EdgeInsets.only(top: 8.0.h),
                        child: SvgPicture.asset(
                          "assets/sleep/statistics.svg",
                          // fit: BoxFit.cover,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ),
                  ]

              ),
              Stack(
                //alignment: Alignment.center,
                  children: [
                    Positioned.fill(
                      child: Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: controler.activeIndex.value  == 5 ? Color(0xFF7EFAFF).withOpacity(.3) : Colors.transparent,
                              spreadRadius: 4,
                              blurRadius: 30,
                              offset: const Offset(0, 2), // Adjust the shadow position as needed
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.profile);
                        controler.setActiveIndex(5);
                      },
                      //isActive?'assets/sleep/ic_home_active.svg':
                      child: controler.activeIndex.value  == 5 ?
                      Padding(
                        padding: const EdgeInsets.only(top: 0),
                        child: SvgPicture.asset(
                          "assets/sleep/profile_star.svg",
                          // fit: BoxFit.cover,
                          height: 36,
                          width: 36,
                        ),
                      ):
                      Padding(
                        padding:  EdgeInsets.only(top: 8.0.h),
                        child: SvgPicture.asset(
                          "assets/sleep/profile.svg",
                          // fit: BoxFit.cover,
                          height: 24.h,
                          width: 24.w,
                        ),
                      ),
                    ),
                  ]

              ),
            ],
          ),
        ), ),
    );

  }
}

