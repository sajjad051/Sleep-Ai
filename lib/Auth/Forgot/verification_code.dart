import 'package:ai_sleep/Auth/Controler/verification_controler.dart';
import 'package:ai_sleep/core/usecase/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';
import '../../core/usecase/text_style.dart';
import '../../widget/custom_button.dart';

class VerificationCode extends StatelessWidget {
   VerificationCode({super.key});

  VerificationController controller = Get.put(VerificationController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF020825),
      appBar: AppBar(
        leading: InkWell(onTap: () {
          Get.back();
        },child: Icon(Icons.arrow_back, color: Colors.white)),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 24.w, right: 24.w,top: 109.h),
        child: Column(
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
                    //border: Border.all(color: Color(0xFF848BBD)),
                    color: AppColor.editTextBackground,
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(color: AppColor.editTextColor, fontSize: 16, fontWeight: FontWeight.w700),
                      controller: controller.first,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                      ],
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
                    //border: Border.all(color: Color(0xFF848BBD)),
                    color: AppColor.editTextBackground,
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(color: AppColor.editTextColor, fontSize: 16, fontWeight: FontWeight.w700),
                      controller: controller.second,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                      ],
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
                    //border: Border.all(color: Color(0xFF848BBD)),
                    color: AppColor.editTextBackground,
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(color: AppColor.editTextColor, fontSize: 16, fontWeight: FontWeight.w700),
                      controller: controller.third,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                      ],
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
                    //border: Border.all(color: Color(0xFF848BBD)),
                    color: AppColor.editTextBackground,
                  ),
                  child: Center(
                    child: TextField(
                      style: TextStyle(color: AppColor.editTextColor, fontSize: 16, fontWeight: FontWeight.w700),
                      controller: controller.fourth,
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                      ],
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
                Text("Don'\t Received any OTPt?",
                    style: welcomeTextSmall()),
                SizedBox(
                  width: 13.w,
                ),
                InkWell(
                  onTap: () {
                    Get.toNamed(Routes.signUp);
                  },
                  child:  Text(
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
            CustomButton(
                height: 54.h,
                width: width,
                text: "Continue",
                background: Color(0xFF7D50FF),
                shadowColor: Color(0xFF7D50FF),
                onPressed: () {
                  controller.verification();
                  Get.toNamed(Routes.resetPassword);
                })
          ],
        ),
      ),
    );
  }
}
