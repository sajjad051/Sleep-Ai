import 'package:ai_sleep/WelcomeScreen/widget/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        SizedBox(
          height: height,
          width: width,
          child: Image.asset(
            "assets/welcome_img/first.webp",
            fit: BoxFit.cover,
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
        const Positioned(
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
    );

  }
}
