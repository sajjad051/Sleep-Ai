import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/usecase/text_style.dart';
import '../../widget/custom_button.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                  'Reset Password ?',
                  style: welcomeTextLarge(),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Enter a new password ',
                  style: welcomeTextSmall(),
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: Get.width,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF848BBD)),
                      color: Color(0xFF848BBD)),
                  child: TextField(
                    onChanged: (text) {
                      // controller.validatePassword(text.toString());
                    },
                    decoration: InputDecoration(
                      hintText: " New Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),

                      border: InputBorder.none,
                      //border:OutlineInputBorder(),
                      // border: BorderRadius.circular(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  width: Get.width,
                  height: 50,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF848BBD)),
                      color: Color(0xFF848BBD)),
                  child: TextField(
                    onChanged: (text) {
                      // controller.validatePassword(text.toString());
                    },
                    decoration: InputDecoration(
                      hintText: " Confirm Password",
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: Icon(Icons.visibility),

                      border: InputBorder.none,
                      //border:OutlineInputBorder(),
                      // border: BorderRadius.circular(),
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

                    })
              ],
            ),
          )),
    );
  }
}
