import 'package:ai_sleep/WelcomeScreen/widget/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage3 extends StatelessWidget {
  const WelcomePage3({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xFF020825),
      body: Container(
       // color: Color(0xFF020825),
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Container(
              height: height * 0.6,
              padding: EdgeInsets.all(20),
              child: Image.asset(
                "assets/welcome_img/third.webp",
                fit: BoxFit.fill,
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(top: 655.h, left: 62.w, right: 60.w),
              child: const Column(
                children: [
                  WelcomePageTextWidget(
                      title: "Relaxing Sounds for Better\nSleeping",
                      description:
                      "Listen to music like meditation at bedtime to boost sleep efficiency"),
                  SizedBox(
                    height: 20,
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 30,  // Adjust this value as needed
              left: 0,
              right: 0,
              child: Opacity(
                opacity: .5,
                child: Center(
                  child: Icon(Icons.keyboard_arrow_down, size: 50, color: Color(0xFFFFFFFF)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
