import 'package:ai_sleep/Auth/Controler/signUp_controler.dart';
import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Route/Routes.dart';
import '../../../core/usecase/app_color.dart';
import '../../../widget/Social_media_button.dart';
import '../../../widget/custom_button.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({super.key});

  SignUpController controller = Get.put(SignUpController());

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset("assets/auth_img/ic_SignUp.webp",
            fit: BoxFit.cover,),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            leading: Icon(Icons.arrow_back, color: Colors.white),
            backgroundColor: Colors.transparent,
            surfaceTintColor: Colors.transparent,
          ),
          body:  SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(top: 240.h,left: 23.w,right: 24.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text(
                    "Create Your account",
                    style: TextStyle(fontSize: 22.sp, color: Colors.white),
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
                        style: TextStyle(fontSize: 16.sp, color: Color(0xFF848BBD)),
                      ),
                      Text(
                        "Sleeping",
                        //style: welcomeTextSmall(),
                        style: TextStyle(fontSize: 16.sp, color: Color(0xFF848BBD), fontWeight: FontWeight.bold),
                      ),
                      Text(
                        " acount",
                        //style: welcomeTextSmall(),
                        style: TextStyle(fontSize: 16.sp, color: Color(0xFF848BBD), ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 37.h,
                  ),
                  Container(
                    width: Get.width,
                    height: 50.h,
                    padding: EdgeInsets.only(left: 24.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColor.editTextBackground),
                      color: AppColor.editTextBackground,
                    ),
                    child: TextField(
                      onChanged: (text) {
                        controller.isEmptyEmail.value= text.isEmpty;
                      },
                      style: const TextStyle(
                        color: AppColor.editTextColor,
                      ),
                      controller: controller.email,
                      decoration: InputDecoration(
                        hintText: "Enter your Email address",
                        prefixIcon: controller.email.text.isEmpty? Icon(Icons.email) : null,
                        //  prefixIcon: controller.isEmptyEmail.value? Icon(Icons.email) : null,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Container(
                    width: Get.width,
                    height: 50.h,
                    padding: EdgeInsets.only(left: 24),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: AppColor.editTextBackground),
                      color: AppColor.editTextBackground,
                    ),
                    child: TextField(
                      onChanged: (text) {
                        controller.isEmptyNumber.value= text.isEmpty;
                      },
                      style: const TextStyle(
                        color: AppColor.editTextColor,
                      ),
                      controller: controller.number,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Enter your Phone Number",
                        prefixIcon:controller.number.text.isEmpty? Icon(Icons.call) : null,
                        // prefixIcon: controller.isEmptyNumber.value?Icon(Icons.call) : null,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                   SizedBox(height: 40.h),
                  Container(
                    width: Get.width,
                    height: 50.h,
                    padding: EdgeInsets.only(left: 24.w),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: AppColor.editTextBackground),
                        color: AppColor.editTextBackground),
                    child: TextField(
                      onChanged: (text) {
                        controller.isEmptyPassword.value= text.isEmpty;
                      },
                      style: const TextStyle(
                        color: AppColor.editTextColor,
                      ),
                      controller: controller.password,
                      obscureText: controller.hidePassword.value,
                      decoration: InputDecoration(
                        hintText: " Enter Password",
                        prefixIcon:controller.password.text.isEmpty? Icon(Icons.lock) : null,
                        // prefixIcon: controller.isEmptyPassword.value?Icon(Icons.lock) : null,
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
                    height: 32.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Checkbox(
                        value: controller.isChecked.value,
                        onChanged: (bool? value) {
                          controller.toggleCheckbox(value);
                        },
                        activeColor: Color(0xFF7D50FF),
                      ),
                      Expanded(
                        child: Text(
                          "By creating this account, you are agreeing to our terms and conditions",
                          style: TextStyle(fontSize: 14.h, color: Color(0xFF848BBD)),
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
                        controller.signUp();
                      }),
                  SizedBox(
                    height: 32.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("already have an account ?",
                          style: welcomeTextSmall()),
                      SizedBox(
                        width: 10.w,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.signIn);
                        },
                        child:  Text(
                          'Sign In',
                          style: TextStyle(
                              color: Color(0xFF7D50FF),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.bold,
                              decorationColor: Colors.purple),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
