import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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
    return Obx(
          () => Scaffold(
        body: Stack(
          children: [
            Container(
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
                    SizedBox(height: 15),
                    Text(
                      'Enter Your Phone Number ',
                      style: welcomeTextSmall(),
                    ),
                    SizedBox(height: 30),
                    Container(
                      width: width,
                      height: 50,
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
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
                              ? Icon(Icons.call)
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
            ),
            Positioned(
              top: 40,
              left: 10,
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white),
                onPressed: () {
                  Get.back(); // Navigate back when pressed
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
