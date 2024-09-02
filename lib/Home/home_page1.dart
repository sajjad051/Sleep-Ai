import 'package:ai_sleep/Home/customHomeCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Route/Routes.dart';
import '../widget/custom_button.dart';
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
                          image: "assets/auth_img/sign_in.jpg", onPressed:  () => showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => Dialog(
                          backgroundColor: Color(0xFF061239),
                          child: Padding(
                            padding: const EdgeInsets.all(20.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[

                                Align(
                                  alignment: Alignment.topRight,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Icon(
                                      Icons.close,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20),
                                Container(
                                  // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                                  height: Get.width * .45,
                                  width: Get.width * .45,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(30),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.black26,
                                        blurRadius: 20,
                                        offset: Offset(0, 10),
                                      )
                                    ],
                                    image: DecorationImage(
                                      image: AssetImage('assets/sleep/pop.jpg'), // Replace with your image path
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 20,),
                                Text(
                                  "Unlock Music",
                                  style: TextStyle(
                                      fontSize: 28,
                                      color: Color(0xFFFFFFFF),
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(height: 15,),
                                Text(
                                  "Unlock Music by Watching Video",
                                  style: TextStyle(fontSize: 19, color: Color(0xFF848BBD)),
                                ),
                                SizedBox(
                                  height: 70,
                                ),
                                RoundedButton(
                                    height: 48,
                                    width: Get.width,
                                    text: "Watch Video",
                                    background: Color(0xFF061239),
                                    shadowColor: Color(0xFF7D50FF),
                                    borderColor: Color(0xFF7D50FF),
                                    onPressed: () {
                                      Get.toNamed(Routes.albam);
                                    }),
                                SizedBox(
                                  height: 20,
                                ),
                                CustomButton(
                                    height: 48,
                                    width: Get.width,
                                    text: "Unlock All",
                                    background: Color(0xFF7D50FF),
                                    shadowColor: Color(0xFF7D50FF),
                                    onPressed: () {}),
                              ],
                            ),
                          ),
                        ),
                      ), ),
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
