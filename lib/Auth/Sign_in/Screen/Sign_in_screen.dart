import 'package:ai_sleep/core/usecase/app_color.dart';
import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Route/Routes.dart';
import '../../../widget/Social_media_button.dart';
import '../../Controler/login_controler.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/auth_img/ic_signIn.webp",
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          body: Obx(() {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 32.h, left: 24.w, right: 24.h),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                    SizedBox(
                      height: 270.h,
                    ),
                    Text(
                      "Sign in",
                      style: GoogleFonts.inter(
                          fontSize: 22.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w500),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 12.h,
                    ),
                    Row(
                      children: [
                        Text(
                          "Welcome to ",
                          //style: welcomeTextSmall(),
                          style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Color(0xFF848BBD),
                              fontWeight: FontWeight.w500),
                        ),
                        Text(
                          "Sleeping",
                          //style: welcomeTextSmall(),
                          style: GoogleFonts.inter(
                              fontSize: 16.sp,
                              color: Color(0xFF848BBD),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " acount",
                          //style: welcomeTextSmall(),
                          style: GoogleFonts.inter(
                            fontSize: 16.sp,
                            color: Color(0xFF848BBD),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 23.h,
                    ),
              
                    //Email
                    Container(
                      width: double.infinity,
                      height: 50,
                      padding: EdgeInsets.only(left: 24.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(color: controller.showEmailIcon.value == true? AppColor.editTextBackground : Color(0xFFFFFFFF).withOpacity(.5)),
                        color: Color(0x19B9C4FB),
                      ),
                      child: TextField(
                        textAlign: TextAlign.start,
                        autofocus: true,
                        onChanged: (text) {
                          if (text.isNotEmpty)
                            controller.showEmailIcon.value = false;
                          if (text.isEmpty) {
                            controller.showEmailIcon.value = true;
                          }
                        },
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                        controller: controller.email,
                        decoration: InputDecoration(
                          hintText: "Enter Your Email Address",
                          hintStyle: GoogleFonts.inter(
                            color: Color(0xFFB9C4FB),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIconConstraints: const BoxConstraints(
                            maxHeight: 24
                          ),
                          prefixIcon: controller.showEmailIcon.value == true
                              ? Padding(
                            padding: EdgeInsets.only(right: 24.w),
                            child: SvgPicture.asset(
                                'assets/sleep/ic_email.svg'),
                          )
                              : null,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 32.h),
              
                    //password
                    Container(
                      width: Get.width,
                      height: 50,
                      padding:  EdgeInsets.only(left: 24.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(color: controller.showLockIcon.value == true? AppColor.editTextBackground : Color(0xFFFFFFFF).withOpacity(.5)),
                          //color: Color(0x19B9C4FB)),
                          color:  AppColor.editTextBackground),
                      child: TextField(
                        onChanged: (text) {
                          if (text.isNotEmpty)
                            controller.showLockIcon.value = false;
                          if (text.isEmpty) {
                            controller.showLockIcon.value = true;
                          }
                        },
                        textAlignVertical: TextAlignVertical.center,
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                        controller: controller.password,
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
                          prefixIcon: controller.showLockIcon.value == true
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
                      height: 12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.forgotPage);
                          },
                          child: Text(
                            'Forget Password?',
                            style: GoogleFonts.inter(
                                color: Color(0xFF7D50FF),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.purple),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 23.h),
                    Obx(() {
                      return CustomButton(
                        height: 54.h,
                        width: Get.width,
                        text: "Sign In",
                        background: controller.showEmailIcon.value == true && controller.showLockIcon.value == true
                            ? Color(0xFF7D50FF).withOpacity(.25)
                            : Color(0xFF7D50FF),
                        shadowColor: controller.showEmailIcon.value == true && controller.showLockIcon.value == true
                            ? null
                            : Color(0xFF6C38FF40),
                        textColor: controller.showEmailIcon.value  == true && controller.showLockIcon.value == true
                            ? Color(0xFFFFFFFF).withOpacity(.60)
                            : Colors.white,
                        onPressed: () {
                         // controller.forgot();
                          Get.toNamed(Routes.forgotPage);
                        },
                      );
                    }),
                    SizedBox(
                      height: 17.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don'\t have an account?",
                            style: welcomeTextSmall()),
                        SizedBox(
                          width: 11.w,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.signUp);
                          },
                          child: Text(
                            'Sign Up',
                            style: GoogleFonts.inter(
                                color: Color(0xFF7D50FF),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.purple),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 44.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 98.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.transparent,
                              Colors.white.withOpacity(0.5),
                            ],
                          )),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Text(
                          "Or Continue With",
                          style: welcomeTextSmall(),
                        ),
                        SizedBox(
                          width: 6.w,
                        ),
                        Container(
                          width: 98.w,
                          height: 4.h,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.white.withOpacity(0.5),
                              // Colors.red,
                              Colors.transparent,
                            ],
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 33.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SocialMediaButton(
                          icon: "assets/auth_img/apple.svg",
                          onPressed: () {},
                        ),
                        SocialMediaButton(
                          icon: "assets/auth_img/facebook.svg",
                          onPressed: () {},
                        ),
                        SocialMediaButton(
                          icon: "assets/auth_img/google.svg",
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ],
    );
  }
}
