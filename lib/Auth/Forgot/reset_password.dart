import 'package:ai_sleep/Auth/Controler/reset_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
      appBar: AppBar(
        leading: InkWell(onTap: () {
          Get.back();
        },child: Icon(Icons.arrow_back, color: Colors.white)),
        backgroundColor: Colors.transparent,
      ),
      body: Obx(
        () => Padding(
          padding:  EdgeInsets.only(top: 108.h, left: 24, right: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Reset Password ?',
                style: welcomeTextLarge(),
              ),
              SizedBox(
                height: 15.h,
              ),
              Text(
                'Enter a new password ',
                style: welcomeTextSmall(),
              ),
              SizedBox(
                height: 40.h,
              ),
              Container(
                width: Get.width,
                height: 50.h,
                padding: EdgeInsets.only(left: 24.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.editTextBackground),
                    color: AppColor.editTextBackground),
                child: TextField(
                  onChanged: (text) {
                    // controller.validatePassword(text.toString());
                  },
                  style: TextStyle(color: AppColor.editTextColor),
                  controller: controller.newPassword,
                  obscureText: controller.hidePassword.value,
                  decoration: InputDecoration(
                    hintText: " New Password",
                    prefixIcon: controller.newPassword.text.isEmpty
                        ? Icon(Icons.lock)
                        : null,
                    // suffixIcon: Icon(Icons.visibility),

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
                height: 24.h,
              ),
              Container(
                width: Get.width,
                height: 50.h,
                padding: EdgeInsets.only(left: 24.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColor.editTextBackground),
                    color: AppColor.editTextBackground),
                child: TextField(
                  onChanged: (text) {
                    // controller.validatePassword(text.toString());
                  },
                  style: TextStyle(color: AppColor.editTextColor),
                  controller: controller.confirmPassword,
                  obscureText: controller.confirmHidePassword.value,
                  decoration: InputDecoration(
                    hintText: " Confirm Password",
                    prefixIcon: controller.confirmPassword.text.isEmpty
                        ? Icon(Icons.lock)
                        : null,
                    // suffixIcon: Icon(Icons.visibility),
                    suffixIcon: controller.confirmHidePassword.value ==
                            false
                        ? InkWell(
                            onTap: () {
                              controller.confirmHidePassword.value = true;
                            },
                            child: const Icon(Icons.visibility))
                        : InkWell(
                            onTap: () {
                              controller.confirmHidePassword.value = false;
                            },
                            child: const Icon(Icons.visibility_off)),

                    border: InputBorder.none,
                    //border:OutlineInputBorder(),
                    // border: BorderRadius.circular(),
                  ),
                ),
              ),
              SizedBox(height: 15.h),
              Text(
                "Password Mis-matched",
                style: TextStyle(fontSize: 14, color: Colors.red),
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
