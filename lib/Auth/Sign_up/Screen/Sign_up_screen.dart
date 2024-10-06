import 'package:ai_sleep/Auth/Controler/signUp_controler.dart';
import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../Route/Routes.dart';
import '../../../core/usecase/app_color.dart';
import '../../../widget/Social_media_button.dart';
import '../../../widget/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  SignUpController SupController = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(
            "assets/auth_img/ic_SignUp.webp",
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Padding(
                padding:  EdgeInsets.only(left: 12.w),
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
          body: Obx(() {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(top: 197.h, left: 23.w, right: 24.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Your account",
                      style: GoogleFonts.inter(
                          fontSize: 22.sp, color: Colors.white),
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
                              fontSize: 16.sp, color: Color(0xFF848BBD)),
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
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xFF848BBD),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 37.h,
                    ),

                    //Email
                    Container(
                      width: double.infinity,
                      height: 50,
                      padding: EdgeInsets.only(left: 24.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                            color: SupController.showEmailIcon.value == true
                                ? AppColor.editTextBackground
                                : Color(0xFFFFFFFF).withOpacity(.5)),
                        color: Color(0x19B9C4FB),
                      ),
                      child: TextField(
                        textAlign: TextAlign.start,
                        // autofocus: true,
                        onChanged: (text) {
                          if (text.isNotEmpty)
                            SupController.showEmailIcon.value = false;
                          if (text.isEmpty) {
                            SupController.showEmailIcon.value = true;
                          }
                        },
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                        controller: SupController.email,
                        decoration: InputDecoration(
                          hintText: "Enter Your Email Address",
                          hintStyle: GoogleFonts.inter(
                            color: Color(0xFFB9C4FB),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIconConstraints:
                              const BoxConstraints(maxHeight: 24),
                          prefixIcon: SupController.showEmailIcon.value == true
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
                    SizedBox(height: 40.h),

                    //PhoneNumber
                    Container(
                      width: double.infinity,
                      height: 50,
                      padding: EdgeInsets.only(left: 24.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.r),
                        border: Border.all(
                            color: SupController.showNumberIcon.value == true
                                ? AppColor.editTextBackground
                                : Color(0xFFFFFFFF).withOpacity(.5)),
                        color: Color(0x19B9C4FB),
                      ),
                      child: TextField(
                        keyboardType: TextInputType.number,
                        textAlign: TextAlign.start,
                        // autofocus: true,
                        onChanged: (text) {
                          if (text.isNotEmpty)
                            SupController.showNumberIcon.value = false;
                          if (text.isEmpty) {
                            SupController.showNumberIcon.value = true;
                          }
                        },
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                        controller: SupController.number,
                        decoration: InputDecoration(
                          hintText: "Enter your Phone Number",
                          hintStyle: GoogleFonts.inter(
                            color: Color(0xFFB9C4FB),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIconConstraints:
                              const BoxConstraints(maxHeight: 24),
                          prefixIcon: SupController.showNumberIcon.value == true
                              ? Padding(
                                  padding: EdgeInsets.only(right: 24.w),
                                  child: SvgPicture.asset(
                                      'assets/sleep/ic_call.svg'),
                                )
                              : null,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 40.h),

                    //password
                    Container(
                      width: Get.width,
                      height: 50,
                      padding: EdgeInsets.only(left: 24.w),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          border: Border.all(
                              color: SupController.showLockIcon.value == true
                                  ? AppColor.editTextBackground
                                  : Color(0xFFFFFFFF).withOpacity(.5)),
                          //color: Color(0x19B9C4FB)),
                          color: AppColor.editTextBackground),
                      child: TextField(
                        onChanged: (text) {
                          if (text.isNotEmpty)
                            SupController.showLockIcon.value = false;
                          if (text.isEmpty) {
                            SupController.showLockIcon.value = true;
                          }
                        },
                        textAlignVertical: TextAlignVertical.center,
                        style: GoogleFonts.inter(
                            color: Colors.white,
                            fontSize: 16.sp,
                            fontWeight: FontWeight.w400),
                        controller: SupController.password,
                        obscureText: SupController.hidePassword.value,
                        decoration: InputDecoration(
                          hintText: "Enter Password",
                          hintStyle: GoogleFonts.inter(
                            color: Color(0xFFB9C4FB),
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w400,
                          ),
                          prefixIconConstraints:
                              const BoxConstraints(maxHeight: 24),
                          prefixIcon: SupController.showLockIcon.value == true
                              ? Padding(
                                  padding: EdgeInsets.only(right: 22.w),
                                  child: SvgPicture.asset(
                                      'assets/sleep/ic_lock.svg'),
                                )
                              : null,
                          //suffixIcon: Icon(Icons.visibility),
                          suffixIcon: SupController.hidePassword.value == false
                              ? InkWell(
                                  onTap: () {
                                    SupController.hidePassword.value = true;
                                  },
                                  child: const Icon(
                                    Icons.visibility,
                                    color: Colors.white,
                                  ))
                              : InkWell(
                                  onTap: () {
                                    SupController.hidePassword.value = false;
                                  },
                                  child: const Icon(
                                    Icons.visibility_off,
                                    color: Colors.white,
                                  )),

                          border: InputBorder.none,
                          //border:OutlineInputBorder(),
                          // border: BorderRadius.circular(),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Theme(
                          data: Theme.of(context).copyWith(
                            checkboxTheme: const CheckboxThemeData(
                              side: BorderSide(
                                  color: Color(0xFF7D50FF),
                                  width: 2), // Change border color here
                            ),
                          ),
                          child: Checkbox(
                            value: SupController.isChecked.value,
                            onChanged: (bool? value) {
                              SupController.toggleCheckbox(value);
                            },
                            activeColor:
                                Color(0xFF7D50FF), // Change the checkmark color
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "By creating this account, you are agreeing to our terms and conditions",
                            style: GoogleFonts.inter(
                                fontSize: 14.h,
                                color: Color(0xFF848BBD),
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 22.h),
                    CustomButton(
                        height: 50.h,
                        width: Get.width,
                        text: "Sign Up",
                        background: Color(0xFF7D50FF),
                        shadowColor: Color(0xFF7D50FF),
                        onPressed: () {
                          SupController.signUp();
                        }),
                    SizedBox(
                      height: 32.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("Already have an account?",
                            style: GoogleFonts.inter(fontSize: 14.sp,fontWeight: FontWeight.w400, color: Color(0xFFFFFFFF).withOpacity(.7))),
                        SizedBox(
                          width: 10.w,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.signIn);
                          },
                          child: Text(
                            'Sign In',
                            style: GoogleFonts.inter(
                                color: Color(0xFF7D50FF),
                                fontSize: 14.sp,
                                fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
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
