import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';
import '../../core/usecase/app_color.dart';
import '../../core/usecase/text_style.dart';
import '../../widget/custom_button.dart';
import '../Controler/forgot_controler.dart';

class ForgotPassword extends StatelessWidget {
  ForgotPassword({super.key});

  ForgotController controller = Get.put(ForgotController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor:Color(0xFF020825),
      appBar: AppBar(
        leading: InkWell(onTap: () {
          Get.back();
        },child: Icon(Icons.arrow_back, color: Colors.white)),
        backgroundColor: Colors.transparent,
      ),
        body: Column(
          children: [
            Padding(
              padding:  EdgeInsets.only(top: 109.w, left: 25.w, right: 25.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Forgot Password ?',
                    style: welcomeTextLarge(),
                  ),
                  SizedBox(height: 15.h),
                  Text(
                    'Enter Your Phone Number ',
                    style: welcomeTextSmall(),
                  ),
                  SizedBox(height: 32.h),
                  Container(
                    width: width,
                    height: 50.h,
                    padding: EdgeInsets.only(left: 28.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: AppColor.editTextBackground),
                      color: AppColor.editTextBackground,
                    ),
                    child: TextField(
                      onChanged: (text) {
                        controller.isEmpty.value = text.isEmpty;
                      },
                      style: TextStyle(color: AppColor.editTextColor),
                      controller: controller.number,
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(11),
                      ],
                      decoration: InputDecoration(
                        hintText: "Enter your Phone Number",
                        prefixIcon: controller.number.text.isEmpty
                            ? Icon(Icons.call,)
                            : null,
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  SizedBox(height: 25),
                  CustomButton(
                    height: 50,
                    width: width,
                    text: "Continue",
                    background: Color(0xFF7D50FF),
                    shadowColor: Color(0xFF7D50FF),
                    onPressed: () {
                      controller.forgot();
                      Get.toNamed(Routes.verificationCode);
                    },
                  ),
                ],
              ),
            ),
          ],
        ),

    );
  }
}
