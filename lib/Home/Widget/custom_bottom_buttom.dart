import 'package:ai_sleep/Home/Widget/navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';

class CustomBottomButtom extends StatelessWidget {
   CustomBottomButtom({super.key});

   final NavigationController controler = Get.find<NavigationController>();


  @override

  //bool isActive = false ;
  // bool isActives = false ;
  Widget build(BuildContext context) {
    return Obx(
      () => Container(
        height: 85.h,
        width: Get.width,
        //padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color:  Color(0xFF020825),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
        ),
        child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 10.h, vertical: 17.w),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [

              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                   // Get.toNamed(Routes.homeScreen);
                   //  pageHomeController.animateToPage(0, duration: Duration(seconds: 1), curve: Curves.easeInOut);
                    controler.setActiveIndex(0);
                  },
                  //isActive?'assets/sleep/ic_home_active.svg':
                   child: controler.activeIndex.value  == 0 ?
                   Container(
                     height: 43.h, // Fixed height
                     width: 43.w,  // Fixed width
                     decoration: BoxDecoration(
                       shape: BoxShape.circle, // Circular shape
                       boxShadow: [
                         BoxShadow(
                           color: Color(0x66F5E14A).withOpacity(.1),
                           spreadRadius: 21,
                           blurRadius: 10,
                           offset: Offset(0, -5),
                         ),
                         // BoxShadow(
                         //   color: Color(0x66F5E14A).withOpacity(.2),
                         //   spreadRadius: 13,
                         //   blurRadius: 10,
                         //   offset: Offset(0, 2),
                         // ),
                         BoxShadow(
                           color: Color(0x66F5E14A).withOpacity(.001),
                           spreadRadius: 10,
                           blurRadius: 20,
                           offset: Offset(0, 1),
                         ),
                       ],
                     ),
                     child: Stack(
                       children: [
                         Center(
                           child: SvgPicture.asset(
                             "assets/sleep/ic_home_fil.svg",
                             height: 24.h, // Image height
                             width: 24.w,  // Image width
                             color: Color(0xFFF5E14A), // Image color
                           ),
                         ),
                         Positioned(right:14.w, top: -5.h, child: SvgPicture.asset(
                           "assets/sleep/ic_star_h.svg",
                           height: 24.h, // Image height
                           width: 22.w,  // Image width
                           color: Color(0xFFF5E14A), // Image color
                         ), )
                       ],
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
              ),

              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                   // pageHomeController.animateToPage(1, duration: Duration(seconds: 1), curve: Curves.easeInOut);
                    //Get.toNamed(Routes.sleep1);
                    controler.setActiveIndex(1);
                    Get.find<NavigationController>().clickStartTrack.value = 0;
                  },
                  //isActive?'assets/sleep/ic_home_active.svg':
                  child: controler.activeIndex.value  == 1 ?
                  Container(
                    height: 43.h, // Fixed height
                    width: 43.w,  // Fixed width
                    decoration: BoxDecoration(
                      //color: Color(0xFF7EF9FF66).withOpacity(.1), // Background color for the container
                      shape: BoxShape.circle, // Circular shape
                      boxShadow: [
                        BoxShadow(
                          color: Color(0x667EF9FF).withOpacity(.2), // Shadow color with 40% opacity (#7EF9FF66)
                          spreadRadius: 12, // Spread of the shadow
                          blurRadius: 30, // Blur radius for softness of shadow
                          offset: Offset(0, -5), // Position of the shadow
                        ),
                        BoxShadow(
                          color: Color(0x667EF9FF).withOpacity(.2), // Shadow color with 40% opacity (#7EF9FF66)
                          spreadRadius: 1, // Spread of the shadow
                          blurRadius: 25, // Blur radius for softness of shadow
                          offset: Offset(0, 2), // Position of the shadow
                        ),
                      ],
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        "assets/sleep/ic_moon_fil.svg",
                        height: 24.h, // Image height
                        width: 24.w,  // Image width
                        color: Color(0xFF7EFAFF), // Image color
                      ),
                    ),
                  )
                      :
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
              ),

              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    //Get.toNamed(Routes.records);
                  //  pageHomeController.animateToPage(2, duration: Duration(seconds: 1), curve: Curves.easeInOut);
                    controler.setActiveIndex(2);
                  },
                  //isActive?'assets/sleep/ic_home_active.svg':
                  child: controler.activeIndex.value  == 2 ?
                  Container(
                    height: 43.h, // Fixed height
                    width: 43.w,  // Fixed width
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Circular shape
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFCFF068).withOpacity(.3),
                          spreadRadius: 5,
                          blurRadius: 15,
                          offset: Offset(0, 2),
                        ),
                        // BoxShadow(
                        //   color: Color(0xFFCFF068).withOpacity(.001),
                        //   spreadRadius: 2,
                        //   blurRadius: 20,
                        //   offset: Offset(0, 1),
                        // ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            "assets/sleep/ic_record_fil.svg",
                            height: 24.h, // Image height
                            width: 24.w,  // Image width
                            color: Color(0xFFCFF068), // Image color
                          ),
                        ),
                        Positioned(right:7.w, top: -1.h, child: SvgPicture.asset(
                          "assets/sleep/ic_star_r.svg",
                          height: 17.h, // Image height
                          width: 15.w,  // Image width
                          color: Color(0xFFCFF068), // Image color
                        ), )
                      ],
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
              ),

              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                   // Get.toNamed(Routes.statistics);
                   // pageHomeController.animateToPage(3, duration: Duration(seconds: 1), curve: Curves.easeInOut);
                    controler.setActiveIndex(3);
                  },
                  //isActive?'assets/sleep/ic_home_active.svg':
                  child: controler.activeIndex.value  == 3 ?
                  Container(
                    height: 43.h, // Fixed height
                    width: 43.w,  // Fixed width
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Circular shape
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFFF2DC2).withOpacity(.3),
                          spreadRadius: 6,
                          blurRadius: 15,
                          offset: Offset(0, 2),
                        ),
                        // BoxShadow(
                        //   color: Color(0xFFCFF068).withOpacity(.001),
                        //   spreadRadius: 2,
                        //   blurRadius: 20,
                        //   offset: Offset(0, 1),
                        // ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            "assets/sleep/ic_statis_fil.svg",
                            height: 24.h, // Image height
                            width: 24.w,  // Image width
                            color: Color(0xFFFF2DC2), // Image color
                          ),
                        ),
                        Positioned(right:7.w, top: -1.h, child: SvgPicture.asset(
                          "assets/sleep/ic_star_statis.svg",
                          height: 17.h, // Image height
                          width: 15.w,  // Image width
                          color: Color(0xFFFF2DC2), // Image color
                        ), )
                      ],
                    ),
                  ):
                  Padding(
                    padding:  EdgeInsets.only(top: 8.0.h),
                    child: SvgPicture.asset(
                      "assets/sleep/statistics_ic.svg",
                      // fit: BoxFit.cover,
                      height: 24.h,
                      width: 24.w,
                    ),
                  ),
                ),
              ),

              Expanded(
                flex: 1,
                child: InkWell(
                  onTap: () {
                    //Get.toNamed(Routes.profile);
                   // pageHomeController.animateToPage(4, duration: Duration(seconds: 1), curve: Curves.easeInOut);
                    controler.setActiveIndex(4);
                  },
                  //isActive?'assets/sleep/ic_home_active.svg':
                  child: controler.activeIndex.value  == 4 ?
                  Container(
                    height: 43.h, // Fixed height
                    width: 43.w,  // Fixed width
                    decoration: BoxDecoration(
                      shape: BoxShape.circle, // Circular shape
                      boxShadow: [
                        BoxShadow(
                          color: Color(0xFFFF4766).withOpacity(.2),
                          spreadRadius: -7,
                          blurRadius: 3,
                          offset: Offset(0, 5),
                        ),
                        BoxShadow(
                          color: Color(0xFFFF4766).withOpacity(.2),
                          spreadRadius: -13,
                          blurRadius: 3,
                          offset: Offset(0, -9),
                        ),
                      ],
                    ),
                    child: Stack(
                      children: [
                        Center(
                          child: SvgPicture.asset(
                            "assets/sleep/ic_profile_fil.svg",
                            height: 24.h, // Image height
                            width: 22.w,  // Image width
                            color: Color(0xFFFF4766), // Image color
                          ),
                        ),
                        Positioned(right:15.w, top: -1.h, child: SvgPicture.asset(
                          "assets/sleep/ic_star_profile.svg",
                          height: 16.h, // Image height
                          width: 14.w,  // Image width
                          color: Color(0xFFFF4766), // Image color
                        ), )
                      ],
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
              ),
            ],
          ),
        ), ),
    );

  }
}

