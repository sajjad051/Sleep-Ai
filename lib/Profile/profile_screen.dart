import 'package:ai_sleep/Profile/profile_list_widget.dart';
import 'package:ai_sleep/widget/custom_button.dart';
import 'package:ai_sleep/widget/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Home/Widget/custom_bottom_buttom.dart';
import '../Home/Widget/navigation_controller.dart';
import '../core/usecase/app_color.dart';
import '../widget/set_btn.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked:(_) async {
        Get.find<NavigationController>().activeIndex.value = 0;
        Get.find<NavigationController>().pageController.jumpToPage(0);

        // Get.toNamed(Routes.homeScreen);
      },
      child: Scaffold(
        backgroundColor: Color(0xFF020825),
       // bottomNavigationBar: CustomBottomButtom(),
        body: Stack(
          children: [
            // Image at the top
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                "assets/sleep/Profile.webp",
                fit: BoxFit.cover, // Ensures the image covers the width
              ),
            ),

            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Padding(
                  padding: EdgeInsets.only(top: Get.height * .33),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello!, Rafi",
                        style:
                            TextStyle(fontSize: 22.sp, color: Color(0xFFFFFFFF)),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                          width: Get.width,
                          height: 152.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            //  border: Border.all(color: Color(0xFF848BBD)),
                            color: Color(0xFF061238),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 25.h, left: 25.w, right: 24.w, bottom: 20.h),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Icon(Icons.alarm,
                                        size: 18,
                                        color:
                                            Color(0xFFFFFFFF).withOpacity(0.8)),
                                    SizedBox(width: 10.w),
                                    Text("Alarm",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Color(0xFFFFFFFF))),
                                    Spacer(),
                                    //Text("Alarm", style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF))),
                                    SetButton(
                                        height: 24,
                                        width: 78,
                                        text: "set",
                                        background:
                                            Color(0xFF7D50FF).withOpacity(.2),
                                        shadowColor: Color(0xFF7D50FF),
                                        onPressed: () {},
                                        borderColor: Color(0xFF7D50FF)),
                                  ],
                                ),
                                Divider(
                                  color: Color(0xFFFFFFFF).withOpacity(.10),
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.alarm,
                                        size: 18,
                                        color:
                                            Color(0xFFFFFFFF).withOpacity(0.8)),
                                    SizedBox(width: 10.w),
                                    Text("Bedtime goal",
                                        style: TextStyle(
                                            fontSize: 16.sp,
                                            color: Color(0xFFFFFFFF))),
                                    Spacer(),
                                    //Text("Alarm", style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF))),
                                    SetButton(
                                        height: 24,
                                        width: 78,
                                        text: "set",
                                        background:
                                            Color(0xFF7D50FF).withOpacity(.2),
                                        shadowColor: Color(0xFF7D50FF),
                                        onPressed: () {},
                                        borderColor: Color(0xFF7D50FF)),
                                  ],
                                ),
                              ],
                            ),
                          )),
                      SizedBox(
                        height: Get.height * .03,
                      ),
                      Container(
                          width: Get.width,
                          height: 417.h,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            //  border: Border.all(color: Color(0xFF848BBD)),
                            color: Color(0xFF061238),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 20, vertical: 25),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ProfileListWidget(
                                    width: 19.2,
                                    height: 24.49,
                                    text: "Contact Us",
                                    onPressed: () {

                                    },
                                    icon: 'assets/auth_img/ic_contact.svg'),
                                Divider(
                                  color: Color(0xFFFFFFFF).withOpacity(.10),
                                ),
                                ProfileListWidget(
                                    width: 19.2,
                                    height: 24.49,
                                    text: "Terms And Conditions",
                                    onPressed: () {

                                    },
                                    icon: 'assets/auth_img/ic_contact.svg'),
                                Divider(
                                  color: Color(0xFFFFFFFF).withOpacity(.10),
                                ),
                                ProfileListWidget(
                                    width: 19.2,
                                    height: 24.49,
                                    text: "Privacy Policy",
                                    onPressed: () {

                                    },
                                    icon: 'assets/auth_img/ic_contact.svg'),
                                Divider(
                                  color: Color(0xFFFFFFFF).withOpacity(.10),
                                ),
                                ProfileListWidget(
                                    width: 19.2,
                                    height: 24.49,
                                    text: "Rate Us",
                                    onPressed: () {

                                    },
                                    icon: 'assets/auth_img/ic_contact.svg'),
                                Divider(
                                  color: Color(0xFFFFFFFF).withOpacity(.10),
                                ),
                                ProfileListWidget(
                                    width: 19.2,
                                    height: 24.49,
                                    text: "FAQ",
                                    onPressed: () {

                                    },
                                    icon: 'assets/auth_img/ic_contact.svg'),
                                Divider(
                                  color: Color(0xFFFFFFFF).withOpacity(.10),
                                ),
                                ProfileListWidget(
                                    width: 19.2,
                                    height: 24.49,
                                    text: "Share App",
                                    onPressed: () {

                                    },
                                    icon: 'assets/auth_img/ic_contact.svg'),
                              ],
                            ),
                          )),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
