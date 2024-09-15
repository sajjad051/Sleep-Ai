import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class RecordSleepData extends StatelessWidget {
  const RecordSleepData({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 273,
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Sleep Quality",
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),

            SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.only(left: 20, right: 37),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      "assets/sleep/moon_star.svg",
                      // fit: BoxFit.cover,
                      height: 18.93,
                      width: 16,
                      color: Color(0xFF848BBD),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        Text(
                          "Wake at",
                          style: TextStyle(
                              color: Color(0xFF848BBD),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "09:40",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  Spacer(),
                    SvgPicture.asset(
                      "assets/sleep/sun.svg",
                      // fit: BoxFit.cover,
                      height: 18.93,
                      width: 16,
                      color: Color(0xFF848BBD),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Column(
                      children: [
                        Text(
                          "Sleep at",
                          style: TextStyle(
                              color: Color(0xFF848BBD),
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                        ),
                        SizedBox(height: 5,),
                        Text(
                          "22:40",
                          style: TextStyle(
                              color: Color(0xFFFFFFFF),
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
              ),
            ),

            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SvgPicture.asset(
                    "assets/sleep/moon_star.svg",
                    // fit: BoxFit.cover,
                    height: 18.93,
                    width: 16,
                    color: Color(0xFF848BBD),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sleep Duration",
                        style: TextStyle(
                            color: Color(0xFF848BBD),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "7h 18min",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    "assets/sleep/sun.svg",
                    // fit: BoxFit.cover,
                    height: 18.93,
                    width: 16,
                    color: Color(0xFF848BBD),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Sleep After",
                        style: TextStyle(
                            color: Color(0xFF848BBD),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "30min",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 39),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    "assets/sleep/moon_star.svg",
                    // fit: BoxFit.cover,
                    height: 18.93,
                    width: 16,
                    color: Color(0xFF848BBD),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Ambient Noise",
                        style: TextStyle(
                            color: Color(0xFF848BBD),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "74db",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    "assets/sleep/sun.svg",
                    // fit: BoxFit.cover,
                    height: 18.93,
                    width: 16,
                    color: Color(0xFF848BBD),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Rem",
                        style: TextStyle(
                            color: Color(0xFF848BBD),
                            fontSize: 12,
                            fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 5,),
                      Text(
                        "40min",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
