import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';
import '../../widget/custom_button.dart';

class BreathTimeCount extends StatelessWidget {
  const BreathTimeCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Image.asset(
              "assets/sleep/background_breath_ex.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 30.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                          onTap: () {
                            //Get.toNamed(Routes.home1);
                          },child: Icon(Icons.arrow_back, color: Colors.white)),
                      SizedBox(width: 15,),
                      Text(
                        'Lauren Groff',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                ),
                SizedBox(height: Get.height * .15,),

                Spacer(),
                CustomButton(
                    height: 50,
                    width: Get.width,
                    text: "Tap to Stop",
                    background: Color(0xFF7D50FF),
                    shadowColor: Color(0xFF7D50FF),
                    onPressed: () {

                    }),
                SizedBox(height: 20,),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
