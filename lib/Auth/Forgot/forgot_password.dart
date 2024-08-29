import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';

class ForgotPassword extends StatelessWidget {
  const ForgotPassword({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          color: Color(0xFF020825),
          height: height,
          width: width,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 150),
                Text(
                  'Forgot Password ?',
                  style: welcomeTextLarge(),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Enter Your Phone Number ',
                  style: welcomeTextSmall(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: width,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Color(0xFF848BBD)),
                    color: Color(0xFF848BBD),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter your Phone Number",
                      prefixIcon: Icon(Icons.call),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                CustomButton(
                    height: 50,
                    width: width,
                    text: "Continue",
                    background: Color(0xFF7D50FF),
                    shadowColor: Color(0xFF7D50FF),
                    onPressed: () {
                      Get.toNamed(Routes.verificationCode);
                    })
              ],
            ),
          )),
    );
    ;
  }
}
