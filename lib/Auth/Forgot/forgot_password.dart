import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';
import '../../core/usecase/tab_space.dart';

class ForgotPassword extends StatelessWidget {
   ForgotPassword({super.key});

  ForgotController controller = Get.put(ForgotController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Obx(
        () => Scaffold(
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
                    padding: EdgeInsets.only(left: 15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: Color(0xFF848BBD)),
                      color: Color(0xFF848BBD),
                    ),
                    child: TextField(
                      onChanged: (text) {
                         controller.isEmpty.value= text.isEmpty;
                      },
                      controller: controller.number,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        hintText: "Enter your Phone Number",
                        prefixIcon:controller.isEmpty.value? Icon(Icons.call) :null,
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
                        controller.forgot();
                        Get.toNamed(Routes.verificationCode);
                      })
                ],
              ),
            )),
      ),
    );
    ;
  }
}
