import 'package:ai_sleep/WelcomeScreen/widget/text_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage3 extends StatelessWidget {
  const WelcomePage3({super.key});

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
              padding: EdgeInsets.all(20),
              child: Image.asset(
                "assets/welcome_img/third.webp",
                fit: BoxFit.fill,
              ),
            ),
            const WelcomePageTextWidget(
                title: "Understand Your Sleep Cycles",
                description:
                    "Track your movements and record sounds you made during sleep")
          ],
        ),
      ),
    );
  }
}
