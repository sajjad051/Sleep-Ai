import 'package:ai_sleep/Records/circular_mini_progress_widget.dart';
import 'package:ai_sleep/Records/custom_bar_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class Sleepquality extends StatelessWidget {
  const Sleepquality({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 391,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(0xFF061238), // Background color
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 31, left: 15, right: 15, bottom: 22),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sleep Quality",
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            CustomBarChart(),
            SizedBox(height: 10),
            Row(
              children: [
                SvgPicture.asset(
                  "assets/sleep/moon_star.svg",
                  // fit: BoxFit.cover,
                  height: 13.03,
                  width: 11,
                  color: Color(0xFF848BBD),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "22:40",
                  style: TextStyle(
                      color: Color(0xFF848BBD),
                      fontSize: 11,
                      fontWeight: FontWeight.w700),
                ),
                Spacer(),
                SvgPicture.asset(
                  "assets/sleep/sun.svg",
                  // fit: BoxFit.cover,
                  height: 13.02,
                  width: 11,
                  color: Color(0xFF848BBD),
                ),
                SizedBox(
                  width: 8,
                ),
                Text(
                  "09:22",
                  style: TextStyle(
                      color: Color(0xFF848BBD),
                      fontSize: 11,
                      fontWeight: FontWeight.w700),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    CircularMiniProgressWidget(
                      percentage: 45,
                      progressColor: Color(0xFFFDFF88),
                      BackgroundColor: Color(0xFF020825),
                    ),
                    Text(
                      "Awake",
                      style: TextStyle(
                          color: Color(0xFF848BBD),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    const Row(
                      children: [
                        Text(
                          "8",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "h",
                          style: TextStyle(color: Color(0xFF848BBD), fontSize: 12),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "40",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "min",
                          style: TextStyle(color: Color(0xFF848BBD), fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    CircularMiniProgressWidget(
                      percentage: 45,
                      progressColor: Color(0xFF00F2FE),
                      BackgroundColor: Color(0xFF020825),
                    ),

                    Text(
                      "Awake",
                      style: TextStyle(
                          color: Color(0xFF848BBD),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    const Row(
                      children: [
                        Text(
                          "8",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "h",
                          style: TextStyle(color: Color(0xFF848BBD), fontSize: 12),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "40",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "min",
                          style: TextStyle(color: Color(0xFF848BBD), fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    CircularMiniProgressWidget(
                      percentage: 80,
                      progressColor: Color(0xFFFF759F),
                      BackgroundColor: Color(0xFF020825),
                    ),
                    Text(
                      "Awake",
                      style: TextStyle(
                          color: Color(0xFF848BBD),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    const Row(
                      children: [
                        Text(
                          "8",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "h",
                          style: TextStyle(color: Color(0xFF848BBD), fontSize: 12),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "40",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "min",
                          style: TextStyle(color: Color(0xFF848BBD), fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),

                Column(
                  children: [
                    CircularMiniProgressWidget(
                      percentage: 45,
                      progressColor: Color(0xFF93BF0E),
                      BackgroundColor: Color(0xFF020825),
                    ),
                    Text(
                      "Awake",
                      style: TextStyle(
                          color: Color(0xFF848BBD),
                          fontSize: 12,
                          fontWeight: FontWeight.w700),
                    ),
                    const Row(
                      children: [
                        Text(
                          "8",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "h",
                          style: TextStyle(color: Color(0xFF848BBD), fontSize: 12),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          "40",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 16,
                              fontWeight: FontWeight.w700),
                        ),
                        Text(
                          "min",
                          style: TextStyle(color: Color(0xFF848BBD), fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
