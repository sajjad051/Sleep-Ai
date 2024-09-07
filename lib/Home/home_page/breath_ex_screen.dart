import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';
import '../../core/usecase/app_color.dart';
import '../../widget/custom_button.dart';
import '../Widget/custom_bottom_buttom.dart';

class BreathExScreen extends StatelessWidget {
  const BreathExScreen({super.key});

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
                            Get.toNamed(Routes.home1);
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
                Center(
                  child: SvgPicture.asset("assets/sleep/breathEx_Img.svg"),
                ),
                SizedBox(height: Get.height * .03,),
                Center(
                  child: Text(
                    'Relax Your Mind and Relieve Stress',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 66,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        //  border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFFFFFFFF).withOpacity(.2),
                      ),
                      child: Center(
                        child: Text("1 min",
                          style: TextStyle(color: AppColor.editTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 66,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        //  border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFFFFFFFF).withOpacity(.2),
                      ),
                      child: Center(
                        child: Text("2 min",
                          style: TextStyle(color: AppColor.editTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 66,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        //  border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFFFFFFFF).withOpacity(.2),
                      ),
                      child: Center(
                        child: Text("3 min",
                          style: TextStyle(color: AppColor.editTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 66,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        //  border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFFFFFFFF).withOpacity(.2),
                      ),
                      child: Center(
                        child: Text("4 min",
                          style: TextStyle(color: AppColor.editTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 66,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        //  border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFFFFFFFF).withOpacity(.2),
                      ),
                      child: Center(
                        child: Text("5 min",
                          style: TextStyle(color: AppColor.editTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 30,),
                CustomButton(
                    height: 50,
                    width: Get.width,
                    text: "Start Now",
                    background: Color(0xFF7D50FF),
                    shadowColor: Color(0xFF7D50FF),
                    onPressed: () {
                      Get.toNamed(Routes.breathTime);
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
