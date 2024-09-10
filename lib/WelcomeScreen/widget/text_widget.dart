import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class WelcomePageTextWidget extends StatelessWidget {
  final String title;
  final String description;
  const WelcomePageTextWidget({super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Text(
          title,
        textAlign:TextAlign.center,
          style: welcomeTextLarge(),
        ),
         SizedBox(height: 20.h),
        Text(
          description,
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 14.sp, color: Color(0xFF848BBD)),
        )
      ],
    );
  }
}
