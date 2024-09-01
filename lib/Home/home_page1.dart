import 'package:ai_sleep/Home/customHomeCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Route/Routes.dart';
import '../widget/rounded_button.dart';
import 'ScrollBtn.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> buttonLabels = [
      "Button1",
      "Button2",
      "Button3",
      "Button4",
      "Button5",
      "Button6",
      "Button7",
    ];

    return Scaffold(
      backgroundColor: Color(0xFF020825),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 35, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/sleep/Vector.webp",
                      color: Colors.white,
                    ),
                    SizedBox(width: 25),
                    Text(
                      "Music",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Row(
                    children: buttonLabels.map((label) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Scrollbtn(
                          onPressed: () {
                            // Handle button press
                          },
                          text: label,
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                children: [
                  Row(
                    children: [
                      Customhomecard(
                        title: "Ghosts and Empties",
                        subtitle: "By Lauren Groff",
                        image: "assets/auth_img/sign_in.jpg", onPressed: () {
                        Get.toNamed(Routes.dialog);
                      },),
                      SizedBox(width: 10,),
                      Customhomecard(
                        title: "Ghosts and Empties",
                        subtitle: "By Lauren Groff",
                          image: "assets/auth_img/sign_in.jpg", onPressed: () {  },),
                    ],
                  ),
                  Row(
                    children: [
                      Customhomecard(
                        title: "Ghosts and Empties",
                        subtitle: "By Lauren Groff",
                        image: "assets/auth_img/sign_in.jpg", onPressed: () {  },),
                      SizedBox(width: 10,),
                      Customhomecard(
                        title: "Ghosts and Empties",
                        subtitle: "By Lauren Groff",
                        image: "assets/auth_img/sign_in.jpg", onPressed: () {  },),
                    ],
                  ),
                  Row(
                    children: [
                      Customhomecard(
                        title: "Ghosts and Empties",
                        subtitle: "By Lauren Groff",
                        image: "assets/auth_img/sign_in.jpg", onPressed: () {  },),
                      SizedBox(width: 10,),
                      Customhomecard(
                        title: "Ghosts and Empties",
                        subtitle: "By Lauren Groff",
                        image: "assets/auth_img/sign_in.jpg", onPressed: () {  },),
                    ],
                  ),
                  Row(
                    children: [
                      Customhomecard(
                        title: "Ghosts and Empties",
                        subtitle: "By Lauren Groff",
                        image: "assets/auth_img/sign_in.jpg", onPressed: () {  },),
                      SizedBox(width: 10,),
                      Customhomecard(
                        title: "Ghosts and Empties",
                        subtitle: "By Lauren Groff",
                        image: "assets/auth_img/sign_in.jpg", onPressed: () {  },),
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
