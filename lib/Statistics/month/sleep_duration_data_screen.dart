import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class SleepMonthDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 340.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(0xFF061238), // Background color
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 20.h, left: 16.w),
            child: Text(
              '  Sleep Data',
              style: GoogleFonts.inter(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          // SizedBox(height: 16),

          Padding(padding: EdgeInsets.only(top: 26.h, left: 25.w,right: 25.w),

            child: Column(
              children: [
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/sleep/profile.svg",
                      height: 19.5.h,
                      width: 19.5.w,
                    ),
                    SizedBox(width: 25.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("average", style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        Text("Sleep Score", style: TextStyle(fontSize: 12.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        Text("8.5", style: TextStyle(fontSize: 14.sp, color: Color(0xFFFFFFFF)),)
                      ],
                    ),
                    SizedBox(width: 80.w,),

                    SvgPicture.asset(
                      "assets/sleep/profile.svg",
                      height: 19.5.h,
                      width: 19.5.w,
                    ),
                    SizedBox(width: 25.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("average", style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        SizedBox(height: 4.h,),
                        Text("Sleep Score", style: TextStyle(fontSize: 12.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        SizedBox(height: 4.h,),
                        Text("8.5", style: TextStyle(fontSize: 14.sp, color: Color(0xFFFFFFFF)),)
                      ],
                    ),
                  ],
                ),
                Divider(color: Color(0xFFFFFFFF).withOpacity(.1),),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/sleep/profile.svg",
                      height: 19.5.h,
                      width: 19.5.w,
                    ),
                    SizedBox(width: 25.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("average", style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        Text("Sleep Score", style: TextStyle(fontSize: 12.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        Text("8.5", style: TextStyle(fontSize: 14.sp, color: Color(0xFFFFFFFF)),)
                      ],
                    ),
                    SizedBox(width: 80.w,),

                    SvgPicture.asset(
                      "assets/sleep/profile.svg",
                      height: 19.5.h,
                      width: 19.5.w,
                    ),
                    SizedBox(width: 25.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("average", style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        SizedBox(height: 4.h,),
                        Text("Sleep Score", style: TextStyle(fontSize: 12.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        SizedBox(height: 4.h,),
                        Text("8.5", style: TextStyle(fontSize: 14.sp, color: Color(0xFFFFFFFF)),)
                      ],
                    ),
                  ],
                ),
                Divider(color: Color(0xFFFFFFFF).withOpacity(.1),),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/sleep/profile.svg",
                      height: 19.5.h,
                      width: 19.5.w,
                    ),
                    SizedBox(width: 25.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("average", style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        Text("Sleep Score", style: TextStyle(fontSize: 12.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        Text("8.5", style: TextStyle(fontSize: 14.sp, color: Color(0xFFFFFFFF)),)
                      ],
                    ),
                    SizedBox(width: 80.w,),

                    SvgPicture.asset(
                      "assets/sleep/profile.svg",
                      height: 19.5.h,
                      width: 19.5.w,
                    ),
                    SizedBox(width: 25.w,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("average", style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        SizedBox(height: 4.h,),
                        Text("Sleep Score", style: TextStyle(fontSize: 12.sp, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                        SizedBox(height: 4.h,),
                        Text("8.5", style: TextStyle(fontSize: 14.sp, color: Color(0xFFFFFFFF)),)
                      ],
                    ),
                  ],
                ),
              ],
            ),

          )





        ],
      ),
    );
  }


}