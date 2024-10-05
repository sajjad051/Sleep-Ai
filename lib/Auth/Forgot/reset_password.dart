import 'package:ai_sleep/Auth/Controler/reset_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../core/usecase/app_color.dart';
import '../../core/usecase/text_style.dart';
import '../../widget/custom_button.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  ResetController controller = Get.put(ResetController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF020825),
      body: Obx(
        () => Padding(
          padding:  EdgeInsets.only(top: 32.h, left: 24.w, right: 24.w),
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
              SizedBox(height: 108,),
              Text(
                'Reset Password ?',
                style: GoogleFonts.inter(
                    fontSize: 22.sp,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Enter a new password ',
                  style: GoogleFonts.inter(
                      fontSize: 14.sp,
                      color: Color(0xFF848BBD),
                      fontWeight: FontWeight.w400),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: Get.width,
                height: 50,
                padding:  EdgeInsets.only(left: 24.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: controller.newPasswordText.value == true? AppColor.editTextBackground : Color(0xFFFFFFFF).withOpacity(.5)),
                    //color: Color(0x19B9C4FB)),
                    color:  AppColor.editTextBackground),
                child: TextField(
                  onChanged: (text) {
                    if (text.isNotEmpty)
                      controller.newPasswordText.value = false;
                    if (text.isEmpty) {
                      controller.newPasswordText.value = true;
                    }
                  },
                  textAlignVertical: TextAlignVertical.center,
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                  controller: controller.newPassword,
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    hintStyle: GoogleFonts.inter(
                      color: Color(0xFFB9C4FB),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIconConstraints: const BoxConstraints(
                        maxHeight: 24
                    ),
                    prefixIcon: controller.newPasswordText.value == true
                        ? Padding(
                      padding: EdgeInsets.only(right: 22.w),
                      child: SvgPicture.asset(
                          'assets/sleep/ic_lock.svg'),
                    )
                        : null,
                    //suffixIcon: Icon(Icons.visibility),
                    suffixIcon: controller.hidePassword.value == false
                        ? InkWell(
                        onTap: () {
                          controller.hidePassword.value = true;
                        },
                        child: const Icon(Icons.visibility,color: Colors.white,))
                        : InkWell(
                        onTap: () {
                          controller.hidePassword.value = false;
                        },
                        child: const Icon(Icons.visibility_off,color: Colors.white,)),

                    border: InputBorder.none,
                    //border:OutlineInputBorder(),
                    // border: BorderRadius.circular(),
                  ),
                ),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: Get.width,
                height: 50,
                padding:  EdgeInsets.only(left: 24.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    border: Border.all(color: controller.confirmPasswordText.value == true? AppColor.editTextBackground : Color(0xFFFFFFFF).withOpacity(.5)),
                    //color: Color(0x19B9C4FB)),
                    color:  AppColor.editTextBackground),
                child: TextField(
                  onChanged: (text) {
                    if (text.isNotEmpty)
                      controller.confirmPasswordText.value = false;
                    if (text.isEmpty) {
                      controller.confirmPasswordText.value = true;
                    }
                  },
                  textAlignVertical: TextAlignVertical.center,
                  style: GoogleFonts.inter(
                      color: Colors.white,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                  controller: controller.confirmPassword,
                  obscureText: controller.confirmHidePassword.value,
                  decoration: InputDecoration(
                    hintText: "Enter Password",
                    hintStyle: GoogleFonts.inter(
                      color: Color(0xFFB9C4FB),
                      fontSize: 14.sp,
                      fontWeight: FontWeight.w400,
                    ),
                    prefixIconConstraints: const BoxConstraints(
                        maxHeight: 24
                    ),
                    prefixIcon: controller.confirmPasswordText.value == true
                        ? Padding(
                      padding: EdgeInsets.only(right: 22.w),
                      child: SvgPicture.asset(
                          'assets/sleep/ic_lock.svg'),
                    )
                        : null,
                    //suffixIcon: Icon(Icons.visibility),
                    suffixIcon: controller.confirmHidePassword.value == false
                        ? InkWell(
                        onTap: () {
                          controller.confirmHidePassword.value = true;
                        },
                        child: const Icon(Icons.visibility,color: Colors.white,))
                        : InkWell(
                        onTap: () {
                          controller.confirmHidePassword.value = false;
                        },
                        child: const Icon(Icons.visibility_off,color: Colors.white,)),

                    border: InputBorder.none,
                    //border:OutlineInputBorder(),
                    // border: BorderRadius.circular(),
                  ),
                ),
              ),

              SizedBox(height: 15.h),
              Text(
                "Password Mis-matched",
                style: GoogleFonts.inter(fontSize: 12.sp, fontWeight:FontWeight.w400 ,color: Color(0xFFDF46A2)),
              ),
              SizedBox(
                height: 24.h,
              ),
              CustomButton(
                  height: 54.h,
                  width: width,
                  text: "Continue",
                  background: Color(0xFF7D50FF),
                  shadowColor: Color(0xFF7D50FF),
                  onPressed: () {
                    controller.reset();
                  })
            ],
          ),
        ),
      ),
    );
  }
}
