import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:ai_sleep/Sleep/controler/picker_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Route/Routes.dart';
import '../core/usecase/app_color.dart';
import '../widget/custom_button.dart';

class Sleep3 extends StatelessWidget {
  const Sleep3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/sleep/sleep_bg.webp",
              fit: BoxFit.cover,
            ),
          ),
        Padding(padding: EdgeInsets.only(left: 20, right: 20,top: 35),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset("assets/sleep/Vector.webp"),
                    SizedBox(width: 20),
                    Text(
                      "Alarm",
                      style: TextStyle(
                        color: Color(0xFF020825),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                 //   Get.toNamed(Routes.sleep3);
                  },
                  child: SvgPicture.asset(
                    "assets/sleep/sveBtn.svg",
                    height: 23.5,
                    width: 23.5,
                  ),
                ),
              ],
            ),
          SizedBox(height: 80),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  //  border: Border.all(color: Color(0xFF848BBD)),
                    color: Color(0xFF020825).withOpacity(.6),
                  ),
                  child: Center(
                    child: Text("Sat",
                      style: TextStyle(color: AppColor.editTextColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //  border: Border.all(color: Color(0xFF848BBD)),
                    color: Color(0xFF020825).withOpacity(.6),
                  ),
                  child: Center(
                    child: Text("sun",
                      style: TextStyle(color: AppColor.editTextColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //  border: Border.all(color: Color(0xFF848BBD)),
                    color: Color(0xFF020825).withOpacity(.6),
                  ),
                  child: Center(
                    child: Text("Mon",
                      style: TextStyle(color: AppColor.editTextColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //  border: Border.all(color: Color(0xFF848BBD)),
                    color: Color(0xFF020825).withOpacity(.6),
                  ),
                  child: Center(
                    child: Text("Tue",
                      style: TextStyle(color: AppColor.editTextColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //  border: Border.all(color: Color(0xFF848BBD)),
                    color: Color(0xFF020825).withOpacity(.6),
                  ),
                  child: Center(
                    child: Text("Wed",
                      style: TextStyle(color: AppColor.editTextColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //  border: Border.all(color: Color(0xFF848BBD)),
                    color: Color(0xFF020825).withOpacity(.6),
                  ),
                  child: Center(
                    child: Text("thu",
                      style: TextStyle(color: AppColor.editTextColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    //  border: Border.all(color: Color(0xFF848BBD)),
                    color: Color(0xFF020825).withOpacity(.6),
                  ),
                  child: Center(
                    child: Text("Fri",
                      style: TextStyle(color: AppColor.editTextColor),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            InkWell(
              onTap: () {
                Get.toNamed(Routes.test);
              },
              child: Container(
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


            ),
            Spacer(),
            CustomButton(
                height: 50,
                width: Get.width,
                text: "Save",
                background: Color(0xFF7D50FF),
                shadowColor: Color(0xFF7D50FF),
                onPressed: () {
                  Get.toNamed(Routes.sleep1);
                }),
         // Spacer(),
            SizedBox(height: 25),
           CustomBottomButtom(),

          //  WheelPickerExample(),

          ],
        ),

        )
        ],
      ),
    );
  }
}
