import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularMiniProgressWidget extends StatelessWidget {
  final double percentage;
  final Color progressColor;
  final Color BackgroundColor;

  CircularMiniProgressWidget({required this.percentage, required this.progressColor, required this.BackgroundColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.width * .3,
      width: 54,
      child: CircularPercentIndicator(
        radius: Get.width * .09,
        lineWidth: 11.5,
        animation: true,
        percent: percentage / 100,
        center: Text(
          "${percentage.toInt()}%",
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Colors.white, // White text color
          ),
        ),
        circularStrokeCap:
        CircularStrokeCap.round, // Round edges for progress bar
        progressColor: progressColor,
       // const Color(0xFF7D50FF), // The color of the progress bar
        backgroundColor: BackgroundColor,
       // const Color(0xFF020825), // The color of the background arc
      ),
    );
  }
}
