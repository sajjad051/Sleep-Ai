import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:flutter/material.dart';

class WelcomePageTextWidget extends StatelessWidget {
  final String title;
  final String description;
  const WelcomePageTextWidget({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      margin: EdgeInsets.only(top: (height*.725) ),
      padding: EdgeInsets.symmetric(horizontal: width * 0.08),
      child: Column(
        children: [
          Text(
            title,
          textAlign:TextAlign.center,
            style: welcomeTextLarge(),
          ),
          const SizedBox(height: 20),
          Text(
            description,
            textAlign: TextAlign.center,
            style: welcomeTextSmall(),
          )
        ],
      ),
    );
  }
}
