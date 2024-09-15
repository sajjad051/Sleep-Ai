import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class CircularProgressWidget extends StatelessWidget {
  final double percentage;

  CircularProgressWidget({required this.percentage});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.width * .5,
      width: Get.width * .5,
      child: CircularPercentIndicator(
        radius: Get.width * .17,
        lineWidth: 20.0,
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
        progressColor:
            const Color(0xFF7D50FF), // The color of the progress bar
        backgroundColor:
            const Color(0xFF020825), // The color of the background arc
      ),
    );
  }
}
