import 'package:ai_sleep/core/usecase/app_color.dart';
import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
          appBar: AppBar(
            leading: InkWell(onTap: () {
              Navigator.pop(context);
            },child: Icon(Icons.arrow_back, color: Colors.white)),
            backgroundColor: Colors.transparent,
          ),
          body: Obx(() {
            return SingleChildScrollView(
              padding: EdgeInsets.only(
                  top: 240.h, right: 24.w, left: 24.w, bottom: 42.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign in",
                    style: TextStyle(
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
                        style: TextStyle(
                            fontSize: 16.sp,
                            color: Color(0xFF848BBD),
                            fontWeight: FontWeight.w500),
                      ),
                      Text(
                        "Sleeping",
                        //style: welcomeTextSmall(),
                        style: TextStyle(
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
                    height: 23.h,
                  ),
                  Container(
                    width: 375.w,
                    height: 50.h,
                    // padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0x19B9C4FB)),
                      color: Color(0x19B9C4FB),
                    ),
                    child: TextField(
                      onChanged: (text) {
                        controller.isEmptyEmail.value = text.isEmpty;
                      },
                      style: const TextStyle(
                        color: AppColor.editTextColor,
                      ),
                      controller: controller.email,
                      decoration: InputDecoration(
                        hintText: " Enter Your Email Address",
                        // prefixIcon: controller.isEmptyEmail.value
                        //     ? Icon(Icons.email)
                        //     : null,
                        prefixIcon: controller.email.text.isEmpty
                            ? Icon(Icons.email)
                            : null,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 32.h),
                  Container(
                    width: 375.w,
                    height: 50.h,
                    //padding: const EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: AppColor.editTextBackground),
                        //color: Color(0x19B9C4FB)),
                        color: AppColor.editTextBackground),
                    child: TextField(
                      onChanged: (text) {
                        controller.isEmptyPassword.value = text.isEmpty;
                      },
                      style: const TextStyle(
                        color: AppColor.editTextColor,
                      ),
                      controller: controller.password,
                      obscureText: controller.hidePassword.value,
                      decoration: InputDecoration(
                        hintText: " Enter Password",
                        // prefixIcon: controller.isEmptyPassword.value
                        //     ? Icon(Icons.lock)
                        //     : null,
                        prefixIcon: controller.password.text.isEmpty
                            ? Icon(Icons.email)
                            : null,
                        //suffixIcon: Icon(Icons.visibility),
                        suffixIcon: controller.hidePassword.value == false
                            ? InkWell(
                            onTap: () {
                              controller.hidePassword.value = true;
                            },
                            child: const Icon(Icons.visibility))
                            : InkWell(
                            onTap: () {
                              controller.hidePassword.value = false;
                            },
                            child: const Icon(Icons.visibility_off)),

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
                          style: TextStyle(
                              color: Color(0xFF7D50FF),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              decorationColor: Colors.purple),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 23.h),
                  CustomButton(
                      height: 50.h,
                      width: 375.w,
                      text: "Sign In",
                      background: const Color(0xFF7D50FF),
                      shadowColor: const Color(0xFF7D50FF),
                      onPressed: () {
                        controller.login();
                        Get.toNamed(Routes.homePageView);
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
                          style: TextStyle(
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
            );
          }),
        ),
      ],
    );
  }
}
