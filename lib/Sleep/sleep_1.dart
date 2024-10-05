import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:ai_sleep/Sleep/swipe_btn.dart';
import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:slider_button/slider_button.dart';

import '../Home/Widget/navigation_controller.dart';
import '../Route/Routes.dart';
import '../core/usecase/app_color.dart';

class Sleep1 extends StatelessWidget {
  const Sleep1({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return PopScope(
      canPop: false,
      onPopInvoked:(_) async {
         Get.find<NavigationController>().activeIndex.value = 0;
         Get.find<NavigationController>().pageController.jumpToPage(0);

        // Get.toNamed(Routes.homeScreen);
    },
      child: Scaffold(
       // bottomNavigationBar: CustomBottomButtom(),
        backgroundColor: Color(0xFF020825),
        body: Stack(
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                "assets/sleep/SleepTwo.webp",
                fit: BoxFit.cover,
                //height: Get.height,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 146.h,left: 24.w,right: 24.w),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Text(
                      "18:04",
                      style: GoogleFonts.inter(
                          color: Color(0xFF020825),
                          fontSize: 72.sp,
                          fontWeight: FontWeight.w500,
                          height: .8),
                    ),
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/sleep/watch_img.svg",
                        height: 24,
                        width: 24,
                      ),
                      SizedBox(
                        width: 16.w,
                      ),
                      Text(
                        "08:00",
                        style: GoogleFonts.inter(
                            fontSize: 24.sp,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF020825)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25.h,
                  ),
                  Center(
                    child: Text(
                      'Now Playing',
                      style: GoogleFonts.inter(
                          color: Color(0xFF020825),
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(height: 43.h),
                  Container(
                    height: 86.h,
                    width: 380.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16).w,
                        border: Border.all(color: Color(0xFF020825)),
                        //color: Color(0x19B9C4FB)),
                        color: Color(0xFF020825).withOpacity(.6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 4.w, right: 4.w, top: 4.h, bottom: 4.h),
                              child: Container(
                                width: 78.w,
                                height: 78.h,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12).w,
                                    border: Border.all(color: Color(0xFF020825)),
                                    //color: Color(0x19B9C4FB)),
                                    color: Color(0xFF020825)),
                                child: Image.asset(
                                  "assets/sleep/music.jpg", // Use Image.asset for JPG or PNG images
                                  height: 78.h,
                                  width: 78.w,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 18.w,
                                    top: 14.h,
                                  ),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Better sleep",
                                        style: GoogleFonts.inter(
                                            fontSize: 16.sp,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                      SizedBox(
                                        height: 18.h,
                                      ),
                                      Text(
                                        "Play Music",
                                        style: GoogleFonts.inter(
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
                  // SizedBox(
                  //   height: 20.h,
                  // ),
                  // Container(
                  //   height: 86,
                  //   width: 380,
                  //   decoration: BoxDecoration(
                  //       borderRadius: BorderRadius.circular(10),
                  //       border: Border.all(color: Color(0xFF020825)),
                  //       //color: Color(0x19B9C4FB)),
                  //       color: Color(0xFF020825).withOpacity(.6)),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsets.only(left:40.0),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //           children: [
                  //             SvgPicture.asset(
                  //               'assets/sleep/icon-park-solid_sleep.svg',
                  //               height: 30,
                  //               width: 30,
                  //             ),
                  //             Text("08:08",style: TextStyle(fontSize: 22,color: Color(0xFFFFFFFF).withOpacity(.7)),)
                  //           ],
                  //         ),
                  //       ),
                  //       Padding(
                  //         padding: const EdgeInsets.only(right:  20.0),
                  //         child: Column(
                  //           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //           children: [
                  //             SvgPicture.asset(
                  //               'assets/sleep/SleepNotes.svg',
                  //               height: 30,
                  //               width: 30,
                  //             ),
                  //             Text("Sleep Notes",style: TextStyle(fontSize: 16,color: Color(0xFFFFFFFF).withOpacity(.7)),)
                  //           ],
                  //         ),
                  //       ),
                  //     ],
                  //   )
                  // ),
                  Spacer(),




                  //Swipe Button
                  // const SwipeBtn(),

                  CustomButton(
                      height: 54.h,
                      width: Get.width,
                      text: "Start Traking",
                      background: Color(0xFF7D50FF),
                      shadowColor: Color(0xFF7D50FF).withOpacity(.25),
                      onPressed: () {
                        Get.find<NavigationController>().clickStartTrack.value = 1;
                        // Get.toNamed(Routes.sleep2);
                      }),
                  SizedBox(height: 37.h,),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
