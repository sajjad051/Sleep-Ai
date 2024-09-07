import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class SleepDataScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 277,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(0xFF061238), // Background color
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Text(
              '  Sleep Data',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
         // SizedBox(height: 16),
          
          Padding(padding: EdgeInsets.all(10),
          
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/sleep/profile.svg",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("average", style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("Sleep Score", style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("8.5", style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),)
                    ],
                  ),
                  Spacer(),

                  SvgPicture.asset(
                    "assets/sleep/profile.svg",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("average", style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("Sleep Score", style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("8.5", style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),)
                    ],
                  ),
                ],
              ),
              Divider(color: Color(0xFFFFFFFF).withOpacity(.1),),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/sleep/profile.svg",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("average", style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("Sleep Score", style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("8.5", style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),)
                    ],
                  ),
                  Spacer(),

                  SvgPicture.asset(
                    "assets/sleep/profile.svg",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("average", style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("Sleep Score", style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("8.5", style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),)
                    ],
                  ),
                ],
              ),
              Divider(color: Color(0xFFFFFFFF).withOpacity(.1),),
              Row(
                children: [
                  SvgPicture.asset(
                    "assets/sleep/profile.svg",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("average", style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("Sleep Score", style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("8.5", style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),)
                    ],
                  ),
                  Spacer(),

                  SvgPicture.asset(
                    "assets/sleep/profile.svg",
                    height: 24,
                    width: 24,
                  ),
                  SizedBox(width: 10,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("average", style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("Sleep Score", style: TextStyle(fontSize: 12, color: Color(0xFFFFFFFF).withOpacity(.6)),),
                      Text("8.5", style: TextStyle(fontSize: 14, color: Color(0xFFFFFFFF)),)
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