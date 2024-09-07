import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:ai_sleep/Statistics/custom_radio_button.dart';
import 'package:ai_sleep/Statistics/sleep_data.dart';
import 'package:ai_sleep/Statistics/sleep_duration.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class StatisticsScreen extends StatelessWidget {
  const StatisticsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF020825),
      bottomNavigationBar: CustomBottomButtom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Statistics",
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: Get.height * .019, ),
              Center(child: CustomRadioButton()),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.keyboard_arrow_left, size: 20, color: Color(0xFFFFFFFF).withOpacity(.7)),
                  SizedBox(width: 10,),
                  Text(
                    'Aug 21 - Aug 28',
                    style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 16),
                  ),
                  SizedBox(width: 10),
                  Icon(Icons.keyboard_arrow_right, size: 20, color: Color(0xFFFFFFFF).withOpacity(.7)),
                ],
              ),
              SizedBox(height: 8,),

              SleepDataScreen(),
              SizedBox(height: 8,),

              SleepDuration(),

            ],
          ),
        ),
      ),
    );
  }
}
