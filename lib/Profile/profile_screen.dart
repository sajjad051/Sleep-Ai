import 'package:ai_sleep/widget/custom_button.dart';
import 'package:ai_sleep/widget/rounded_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Home/Widget/custom_bottom_buttom.dart';
import '../core/usecase/app_color.dart';
import '../widget/set_btn.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF020825),
      bottomNavigationBar: CustomBottomButtom(),
      body: Stack(
        children: [
          // Image at the top
          SizedBox(
            height: Get.height ,
            width: Get.width,
            child: Image.asset(
              "assets/sleep/Profile.webp",
              fit: BoxFit.cover, // Ensures the image covers the width
            ),
          ),

          SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Padding(
                padding: EdgeInsets.only(top: Get.height * .33),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Hello!, Rafi",
                      style: TextStyle(fontSize: 22, color: Color(0xFFFFFFFF)),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                        width: Get.width,
                        height: Get.height * .17,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //  border: Border.all(color: Color(0xFF848BBD)),
                          color: Color(0xFF061238),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.alarm,
                                      size: 24,
                                      color: Color(0xFFFFFFFF).withOpacity(0.8)),
                                  SizedBox(width: 10),
                                  Text("Alarm",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFFFFFFF))),
                                  Spacer(),
                                  //Text("Alarm", style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF))),
                                  SetButton(
                                      height: 24,
                                      width: 78,
                                      text: "set",
                                      background: Color(0xFF7D50FF).withOpacity(.2),
                                      shadowColor: Color(0xFF7D50FF),
                                      onPressed: () {
                                        
                                      },
                                      borderColor: Color(0xFF7D50FF)),
                                ],
                              ),
                              Divider(
                                color: Color(0xFFFFFFFF).withOpacity(.10),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.alarm,
                                      size: 24,
                                      color: Color(0xFFFFFFFF).withOpacity(0.8)),
                                  SizedBox(width: 10),
                                  Text("Bedtime Goal",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFFFFFFF))),
                                  Spacer(),
                                  //Text("Alarm", style: TextStyle(fontSize: 16, color: Color(0xFFFFFFFF))),
                                  SetButton(
                                      height: 24,
                                      width: 78,
                                      text: "set",
                                      background: Color(0xFF7D50FF).withOpacity(.2),
                                      shadowColor: Color(0xFF7D50FF),
                                      onPressed: () {
            
                                      },
                                      borderColor: Color(0xFF7D50FF)),
                                ],
                              ),
            
                            ],
                          ),
                        )),
            
                    SizedBox(height: Get.height * .03,),
            
                    Container(
                        width: Get.width,
                        height: Get.height * .38,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          //  border: Border.all(color: Color(0xFF848BBD)),
                          color: Color(0xFF061238),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 25),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.alarm,
                                      size: 24,
                                      color: Color(0xFFFFFFFF).withOpacity(0.8)),
                                  SizedBox(width: 10),
                                  Text("Contact Us",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFFFFFFF))),
                                ],
                              ),
                              Divider(
                                color: Color(0xFFFFFFFF).withOpacity(.10),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.alarm,
                                      size: 24,
                                      color: Color(0xFFFFFFFF).withOpacity(0.8)),
                                  SizedBox(width: 10),
                                  Text("Terms And Conditions",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFFFFFFF))),
                                ],
                              ),
            
                              Divider(
                                color: Color(0xFFFFFFFF).withOpacity(.10),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.alarm,
                                      size: 24,
                                      color: Color(0xFFFFFFFF).withOpacity(0.8)),
                                  SizedBox(width: 10),
                                  Text("Privacy Policy",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFFFFFFF))),
                                ],
                              ),
            
                              Divider(
                                color: Color(0xFFFFFFFF).withOpacity(.10),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.alarm,
                                      size: 24,
                                      color: Color(0xFFFFFFFF).withOpacity(0.8)),
                                  SizedBox(width: 10),
                                  Text("Rate Us",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFFFFFFF))),
                                ],
                              ),
            
                              Divider(
                                color: Color(0xFFFFFFFF).withOpacity(.10),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.alarm,
                                      size: 24,
                                      color: Color(0xFFFFFFFF).withOpacity(0.8)),
                                  SizedBox(width: 10),
                                  Text("FAQ",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFFFFFFF))),
                                ],
                              ),
            
                              Divider(
                                color: Color(0xFFFFFFFF).withOpacity(.10),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.alarm,
                                      size: 24,
                                      color: Color(0xFFFFFFFF).withOpacity(0.8)),
                                  SizedBox(width: 10),
                                  Text("Share App",
                                      style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFFFFFFFF))),
                                ],
                              ),
            
                            ],
                          ),
                        )),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
