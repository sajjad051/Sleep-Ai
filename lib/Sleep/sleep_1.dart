import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Route/Routes.dart';
import '../core/usecase/app_color.dart';

class Sleep1 extends StatelessWidget {
  const Sleep1({super.key});

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
              "assets/sleep/sleep_bg.webp",
              fit: BoxFit.cover,
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "18:04",
                      style: TextStyle(
                          color: Color(0xFF020825),
                          fontSize: 72,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 140),
                        child: SvgPicture.asset(
                          "assets/sleep/watch_img.svg",
                          height: 24,
                          width: 24,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "08:00",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF020825)),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Now Playing',
                    style: TextStyle(
                        color: Color(0xFF020825),
                        fontSize: 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(height: 30),
                  Container(
                    height: 86,
                    width: 380,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF020825)),
                        //color: Color(0x19B9C4FB)),
                        color: Color(0xFF020825).withOpacity(.6)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 78,
                              height: 78,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(color: Color(0xFF020825)),
                                  //color: Color(0x19B9C4FB)),
                                  color: Color(0xFF020825)),
                              child: Image.asset(
                                "assets/sleep/music.jpg", // Use Image.asset for JPG or PNG images
                                height: 78,
                                width: 78,
                                fit: BoxFit.cover,
                              ),
                            ),
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                    left: 14,
                                    top: 5,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Better sleep",
                                        style: TextStyle(
                                            fontSize: 16,
                                            fontWeight: FontWeight.w700,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "Better sleep",
                                        style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0xFFFFFFFF)),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: SvgPicture.asset(
                            "assets/sleep/playBtn.svg",
                            height: 40,
                            width: 40,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 250,
                  ),
                  CustomButton(
                      height: 48,
                      width: width,
                      text: "Start Traking",
                      background: Color(0xFF7D50FF),
                      shadowColor: Color(0xFF7D50FF),
                      onPressed: () {

                        Get.toNamed(Routes.sleep2);

                      }),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        "assets/sleep/watch_img.svg",
                        height: 40,
                        width: 40,
                      ),
                      SvgPicture.asset(
                        "assets/sleep/watch_img.svg",
                        height: 40,
                        width: 40,
                      ),
                      SvgPicture.asset(
                        "assets/sleep/watch_img.svg",
                        height: 40,
                        width: 40,
                      ),
                      SvgPicture.asset(
                        "assets/sleep/watch_img.svg",
                        height: 40,
                        width: 40,
                      ),
                      SvgPicture.asset(
                        "assets/sleep/watch_img.svg",
                        height: 40,
                        width: 40,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 25,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
