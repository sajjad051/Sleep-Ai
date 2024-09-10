import 'package:ai_sleep/Auth/Sign_up/Screen/Sign_up_screen.dart';
import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Route/Routes.dart';
import '../widget/rounded_button.dart';

class WelcomeAuthPage extends StatelessWidget {
  const WelcomeAuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Image.asset(
              "assets/auth_img/welcome_auth.webp",
              fit: BoxFit.fill,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.only(left: 24.w, right: 48.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to",
                      textAlign: TextAlign.left,
                      style: welcomeTextLarge(),
                    ),
                     Text(
                      "Sleeping",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 30.sp, color: const Color(0xFFFEE4A2)),
                    ),
                     SizedBox(
                      height: 27.h,
                    ),
                    Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pretium aliquet nec velit nunc scelerisque facilisis mauris diam proin. Luctus eu sed nunc viverra imperdiet dui, lectus mauris vivamus",
                      textAlign: TextAlign.left,
                      style: welcomeTextSmall(),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w),
                child: Column(
                  children: [
                    CustomButton(
                        height: 48.h,
                        width: width,
                        text: "Sign In",
                        background: const Color(0xFF7D50FF),
                        shadowColor: const Color(0xFF7D50FF),
                        onPressed: () {
                          Get.toNamed(Routes.signIn);
                        }),
                    SizedBox(
                      height: 25.h,
                    ),
                    RoundedButton(
                        height: 48,
                        width: Get.width,
                        text: "Create Account",
                        background: const Color(0xFF020825),
                        shadowColor: const Color(0xFF7D50FF),
                        borderColor: const Color(0xFF7D50FF),
                        onPressed: () {
                          Get.toNamed(Routes.signUp);
                        }),
                    SizedBox(
                      height: 70.h,
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
