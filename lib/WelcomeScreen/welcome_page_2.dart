import 'package:ai_sleep/WelcomeScreen/widget/text_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage2 extends StatelessWidget {
  const WelcomePage2({super.key});

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
              "assets/welcome_img/second.webp",
              fit: BoxFit.fill,
            ),
          ),
          WelcomePageTextWidget(
              title: "Relaxing Sounds for Better\nSleeping",
              description:
                  "Listen to music like meditation at bedtime to boost sleep efficiency"),
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
    );
  }
}
