import 'package:ai_sleep/WelcomeScreen/widget/text_widget.dart';
import 'package:flutter/material.dart';

class WelcomePage4 extends StatelessWidget {
  const WelcomePage4({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Color(0xFF020825),
      child: Stack(
        alignment: Alignment.topCenter,
        children: [
          Container(
            height: (height * 6) ,
            child: Image.asset(
              "assets/welcome_img/fourth.webp",
              fit: BoxFit.fill,
            ),
          ),
          WelcomePageTextWidget(
              title: "Sleep Statistics and Trends You Need",
              description:
                  "Review statistics that may reveal shocking truth about your health"),
          
          Padding(padding: EdgeInsets.only(top: height * 0.60),

          )
        ],
      ),
    );
  }
}
