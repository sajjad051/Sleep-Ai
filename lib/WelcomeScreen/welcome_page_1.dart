import 'package:ai_sleep/WelcomeScreen/widget/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomePage1 extends StatelessWidget {
  const WelcomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: height,
            width: width,
            child: Image.asset(
              "assets/welcome_img/first.webp",
              fit: BoxFit.fill,
            ),
          ),
          Column(
            children: [
              const WelcomePageTextWidget(
                  title: "Relaxing Sounds for Better\nSleeping",
                  description:
                      "Listen to music like meditation at bedtime to boost sleep efficiency"),
              SizedBox(
                height: 20,
              ),
              // Container(
              //   height: 44,
              //   width: 44,
              //   child: Image.asset(
              //     "assets/sleep/plusIcon.jpg",
              //     fit: BoxFit.cover,
              //   ),
              // )
            ],
          ),
        ],
      ),
    );
  }
}
