import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
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
                padding: EdgeInsets.symmetric(horizontal: width * 0.05),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Welcome to",
                      textAlign: TextAlign.left,
                      style: welcomeTextLarge(),
                    ),
                    const Text(
                      "Sleeping",
                      textAlign: TextAlign.left,
                      style: TextStyle(fontSize: 30, color: Color(0xFFFEE4A2)),
                    ),
                    const SizedBox(
                      height: 20,
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
                height: 25,
              ),
              Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Column(
                  children: [
                    CustomButton(
                        height: 48,
                        width: width,
                        text: "Sign In",
                        background: Color(0xFF7D50FF),
                        shadowColor: Color(0xFF7D50FF),
                        onPressed: () {
                          Get.toNamed(Routes.signIn);
                        }),
                    SizedBox(
                      height: 5,
                    ),
                    RoundedButton(
                        height: 48,
                        width: Get.width,
                        text: "Create Account",
                        background: Color(0xFF020825),
                        shadowColor: Color(0xFF7D50FF),
                        borderColor: Color(0xFF7D50FF),
                        onPressed: () {
                          Get.toNamed(Routes.signUp);
                        }),
                    SizedBox(
                      height: 25,
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
