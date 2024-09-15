import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Route/Routes.dart';
import '../../widget/custom_button.dart';

class BreathTimeCount extends StatelessWidget {
  const BreathTimeCount({super.key});

  @override
  Widget build(BuildContext context) {
    return 
       Stack(
        children: [
          SizedBox(
            height: Get.height,
            width: Get.width,
            child: Image.asset(
              "assets/sleep/background_breath_ex.jpg",
              fit: BoxFit.cover,
            ),
          ),
          Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              title: Text(
                "Bedtime Stories",
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF).withOpacity(.8)),
              ),
              leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white)),
              backgroundColor: Colors.transparent,
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

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
          ),
        ],
      );
    
  }
}
