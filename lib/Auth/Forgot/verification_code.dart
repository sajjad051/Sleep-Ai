import 'package:ai_sleep/Auth/Controler/verification_controler.dart';
import 'package:ai_sleep/core/usecase/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Route/Routes.dart';
import '../../core/usecase/text_style.dart';
import '../../widget/custom_button.dart';

class VerificationCode extends StatelessWidget {
  VerificationCode({super.key});

  VerificationController controller = Get.put(VerificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF020825),
      appBar: AppBar(
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Padding(
            padding:  EdgeInsets.only(left: 10.w),
            child: Transform.scale(
              scale: 1,  // Adjust the scale factor to resize
              child: SvgPicture.asset(
                'assets/sleep/ic_ar_back.svg', // Path to your SVG file
                color: Colors.white, // Set the color if needed
              ),
            ),
          ),
        ),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
        toolbarHeight: 32.h,

      ),
      body: Padding(
        padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 120.h),
        child: Obx(() {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Verification Code ',
                style: welcomeTextLarge(),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Enter Verification Code To Continue ',
                style: welcomeTextSmall(),
              ),
              SizedBox(
                height: 23.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 59.26.w,
                    height: 55.26.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: controller.firstText.value == true
                              ? AppColor.editTextBackground
                              : Color(0xFFFFFFFF).withOpacity(.5)),
                      color: Color(0xFFFFFFFF).withOpacity(.1),
                    ),
                    child: Center(
                      child: TextField(
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                        controller: controller.first,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          // Limits to 4 characters
                        ],
                        onChanged: (text) {
                          if (text.isNotEmpty)
                            controller.firstText.value = false;
                          FocusScope.of(context).nextFocus();
                          if (text.isEmpty) {
                            controller.firstText.value = true;
                          }
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 59.26.w,
                    height: 55.26.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: controller.secondText.value == true
                              ? AppColor.editTextBackground
                              : Color(0xFFFFFFFF).withOpacity(.5)),
                      color: Color(0xFFFFFFFF).withOpacity(.1),
                    ),
                    child: Center(
                      child: TextField(
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                        controller: controller.second,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          // Limits to 4 characters
                        ],
                        onChanged: (text) {
                          if (text.isNotEmpty)
                            controller.secondText.value = false;
                          FocusScope.of(context).nextFocus();
                          if (text.isEmpty) {
                            controller.secondText.value = true;
                          }
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 59.26.w,
                    height: 55.26.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: controller.thirdText.value == true
                              ? AppColor.editTextBackground
                              : Color(0xFFFFFFFF).withOpacity(.5)),
                      color: Color(0xFFFFFFFF).withOpacity(.1),
                    ),
                    child: Center(
                      child: TextField(
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                        controller: controller.third,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          // Limits to 4 characters
                        ],
                        onChanged: (text) {
                          if (text.isNotEmpty)
                            controller.thirdText.value = false;
                          FocusScope.of(context).nextFocus();
                          if (text.isEmpty) {
                            controller.thirdText.value = true;
                          }
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 59.26.w,
                    height: 55.26.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                          color: controller.fourthText.value == true
                              ? AppColor.editTextBackground
                              : Color(0xFFFFFFFF).withOpacity(.5)),
                      color: Color(0xFFFFFFFF).withOpacity(.1),
                    ),
                    child: Center(
                      child: TextField(
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.w700),
                        controller: controller.fourth,
                        textAlign: TextAlign.center,
                        keyboardType: TextInputType.number,
                        inputFormatters: [
                          LengthLimitingTextInputFormatter(1),
                          // Limits to 4 characters
                        ],
                        onChanged: (text) {
                          if (text.isNotEmpty)
                            controller.fourthText.value = false;
                          if (text.isEmpty) {
                            controller.fourthText.value = true;
                          }
                        },
                        decoration: InputDecoration(
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 26.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text("Don'\t Received any OTPt?", style: welcomeTextSmall()),
                  SizedBox(
                    width: 13.w,
                  ),
                  InkWell(
                    onTap: () {
                      Get.toNamed(Routes.signUp);
                    },
                    child: Text(
                      'Resend OTP',
                      style: TextStyle(
                          color: Color(0xFF7D50FF),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.bold,
                          decorationColor: Colors.purple),
                    ),
                  ),
                ],
              ),

              SizedBox(
                height: 29,
              ),
              // CustomButton(
              //     height: 54.h,
              //     width: width,
              //     text: "Continue",
              //     background: Color(0xFF7D50FF),
              //     shadowColor: Color(0xFF7D50FF),
              //     onPressed: () {
              //       controller.verification();
              //       Get.toNamed(Routes.resetPassword);
              //     })

              CustomButton(
                height: 54.h,
                width: Get.width,
                text: "Continue",
                background: controller.firstText.value == true
                    ? Color(0xFF7D50FF).withOpacity(.25)
                    : Color(0xFF7D50FF),
                shadowColor: controller.firstText.value == true
                    ? null
                    : Color(0xFF6C38FF40),
                textColor: controller.firstText.value == true
                    ? Color(0xFFFFFFFF).withOpacity(.60)
                    : Colors.white,
                onPressed: () {
                  Get.toNamed(Routes.resetPassword);
                },
              ),
            ],
          );
        }),
      ),
    );
  }
}
