import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Route/Routes.dart';
import '../../core/usecase/app_color.dart';
import '../../core/usecase/text_style.dart';
import '../../widget/custom_button.dart';
import '../Controler/forgot_controler.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  final ForgotController controller = Get.put(ForgotController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      backgroundColor: Color(0xFF020825),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 32.h, left: 25.w, right: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: SizedBox(
                    height: 32.h,
                    width: 32.w,
                    child: SvgPicture.asset(
                      "assets/sleep/ic_ar_back.svg",
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(height: 157.h,),
                Text(
                  'Forgot Password ?',
                  style: GoogleFonts.inter(
                      fontSize: 22.sp,
                      color: Colors.white,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 15.h),
                Text(
                  'Enter Your Phone Number ',
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      color: Color(0xFF848BBD),
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(height: 32.h),


                Obx(() {
                  return Container(
                    width: double.infinity,
                    height: 50,
                    padding: EdgeInsets.only(left: 24.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.r),
                      border: Border.all(color: controller.showPhoneNumber
                          .value == true ? AppColor.editTextBackground : Color(
                          0xFFFFFFFF).withOpacity(.5)),
                      color: Color(0x19B9C4FB),
                    ),
                    child: TextField(
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.start,
                      autofocus: true,
                      onChanged: (text) {
                        if (text.isNotEmpty)
                          controller.showPhoneNumber.value = false;
                        if (text.isEmpty) {
                          controller.showPhoneNumber.value = true;
                        }
                      },
                      style: GoogleFonts.inter(
                          color: Colors.white,
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w400),
                      controller: controller.number,
                      decoration: InputDecoration(
                        hintText: "Enter your Phone Number",
                        hintStyle: GoogleFonts.inter(
                          color: Color(0xFFB9C4FB),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                        ),
                        prefixIconConstraints: const BoxConstraints(
                            maxHeight: 24
                        ),
                        prefixIcon: controller.showPhoneNumber.value == true
                            ? Padding(
                          padding: EdgeInsets.only(right: 24.w),
                          child: SvgPicture.asset(
                              'assets/sleep/ic_call.svg'),
                        )
                            : null,
                        border: InputBorder.none,
                      ),
                    ),
                  );
                }),


                SizedBox(height: 25.h),
                Obx(() {
                  return CustomButton(
                    height: 54.h,
                    width: width,
                    text: "Continue",
                    background: controller.showPhoneNumber.value == true
                        ? Color(0xFF7D50FF).withOpacity(.25)
                        : Color(0xFF7D50FF),
                    shadowColor: controller.showPhoneNumber.value == true
                        ? null
                        : Color(0xFF6C38FF40),
                    textColor: controller.showPhoneNumber.value == true
                        ? Color(0xFFFFFFFF).withOpacity(.60)
                        : Colors.white,
                    onPressed: () {
                      controller.forgot();
                      Get.toNamed(Routes.verificationCode);
                    },
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
