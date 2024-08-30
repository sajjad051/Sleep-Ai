import 'package:ai_sleep/Auth/Controler/verification_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';
import '../../core/usecase/text_style.dart';
import '../../widget/custom_button.dart';

class VerificationCode extends StatelessWidget {
   VerificationCode({super.key});

  VerificationController controller = Get.put(VerificationController());

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
                  'Verification Code ',
                  style: welcomeTextLarge(),
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'Enter Verification Code To Continue ',
                  style: welcomeTextSmall(),
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFF848BBD),
                      ),
                      child: Center(
                        child: TextField(
                          controller: controller.first,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                          ],
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFF848BBD),
                      ),
                      child: Center(
                        child: TextField(
                          controller: controller.second,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                          ],
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFF848BBD),
                      ),
                      child: Center(
                        child: TextField(
                          controller: controller.third,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                          ],
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                    Container(
                      width: 50,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFF848BBD),
                      ),
                      child: Center(
                        child: TextField(
                          controller: controller.fourth,
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                          ],
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(
                  height: 35,
                ),
                CustomButton(
                    height: 50,
                    width: width,
                    text: "Continue",
                    background: Color(0xFF7D50FF),
                    shadowColor: Color(0xFF7D50FF),
                    onPressed: () {
                      controller.verification();
                      Get.toNamed(Routes.resetPassword);
                    })
              ],
            ),
          )),
    );
  }
}
