import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Route/Routes.dart';
import '../../core/usecase/app_color.dart';
import '../../widget/custom_button.dart';
import '../Widget/custom_bottom_buttom.dart';

class BreathExScreen extends StatelessWidget {
  const BreathExScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
            padding:  EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 90.h,
                ),
                Center(
                  child: SvgPicture.asset("assets/sleep/breathEx_Img.svg"),
                ),
                SizedBox(
                  height: 34.h,
                ),
                Center(
                  child: Text(
                    'Relax Your Mind and Relieve Stress',
                    style: GoogleFonts.inter(
                        color: Colors.white,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 66.w,
                      height: 66.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        //  border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFFFFFFFF).withOpacity(.2),
                      ),
                      child: Center(
                        child: Text(
                          "1 min",
                          style: GoogleFonts.inter(color: AppColor.editTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 66.w,
                      height: 66.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        //  border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFFFFFFFF).withOpacity(.2),
                      ),
                      child: Center(
                        child: Text(
                          "2 min",
                          style: GoogleFonts.inter(color: AppColor.editTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 66.w,
                      height: 66.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        //  border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFFFFFFFF).withOpacity(.2),
                      ),
                      child: Center(
                        child: Text(
                          "3 min",
                          style: GoogleFonts.inter(color: AppColor.editTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 66.w,
                      height: 66.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        //  border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFFFFFFFF).withOpacity(.2),
                      ),
                      child: Center(
                        child: Text(
                          "4 min",
                          style: GoogleFonts.inter(color: AppColor.editTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Container(
                      width: 66.w,
                      height: 66.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(45),
                        //  border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFFFFFFFF).withOpacity(.2),
                      ),
                      child: Center(
                        child: Text(
                          "5 min",
                          style: GoogleFonts.inter(color: AppColor.editTextColor),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                CustomButton(
                    height: 50.h,
                    width: Get.width,
                    text: "Start Now",
                    background: Color(0xFF7D50FF),
                    shadowColor: Color(0xFF7D50FF),
                    onPressed: () {
                      Get.toNamed(Routes.breathTime);
                    }),
                SizedBox(
                  height: 69.h,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
