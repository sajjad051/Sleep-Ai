import 'package:ai_sleep/WelcomeScreen/welcome_page_3.dart';
import 'package:ai_sleep/WelcomeScreen/welcome_page_3.dart';
import 'package:ai_sleep/WelcomeScreen/widget/text_widget.dart';
import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Route/Routes.dart';

class WelcomePage4 extends StatelessWidget {
  const WelcomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color(0xFF020825),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: height * 0.6,
              width: width,
              child: Image.asset(
                "assets/welcome_img/fourth.webp",
                fit: BoxFit.fill,
              ),
            ),
      
            WelcomePageTextWidget(
                title: "Sleep Statistics and Trends You Need",
                description:
                    "Review statistics that may reveal shocking truth about your health"
            ),
      
            Padding(
              padding: EdgeInsets.only(top: height * 0.88),
              child: CustomButton(
                  height: 48,
                  width: 120,
                  text: "start",
                  background: Color(0xFF7D50FF),
                  shadowColor: Color(0xFF7D50FF),
                  onPressed: () {
                    Get.toNamed(Routes.welcomeAuthPage);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
