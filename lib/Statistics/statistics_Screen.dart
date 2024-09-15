import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:ai_sleep/Statistics/custom_radio_button.dart';
import 'package:ai_sleep/Statistics/environment_noise.dart';
import 'package:ai_sleep/Statistics/month/environment_noise_month.dart';
import 'package:ai_sleep/Statistics/month/sleep_duration_data_screen.dart';
import 'package:ai_sleep/Statistics/month/sleep_month_duration.dart';
import 'package:ai_sleep/Statistics/month/sleep_month_regularity.dart';
import 'package:ai_sleep/Statistics/s_regularity.dart';
import 'package:ai_sleep/Statistics/sleep_at_line_chart.dart';
import 'package:ai_sleep/Statistics/sleep_data.dart';
import 'package:ai_sleep/Statistics/sleep_duration.dart';
import 'package:ai_sleep/Statistics/sleep_regularity.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class StatisticsScreen extends StatelessWidget {
   StatisticsScreen({super.key});

  final PageController pageController = Get.put(PageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF020825),
     // bottomNavigationBar: CustomBottomButtom(),
      body: Padding(
        padding:  EdgeInsets.only(left: 24.w, right: 24.w, top: 32.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Statistics",
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(height: 22.h ),
            Center(child: CustomRadioButton()),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.keyboard_arrow_left, size: 20.sp, color: Color(0xFFFFFFFF).withOpacity(.7)),
                SizedBox(width: 10.w,),
                Text(
                  'Aug 21 - Aug 28',
                  style: TextStyle(color: Color(0xFFFFFFFF),fontSize: 16.sp),
                ),
                SizedBox(width: 10.w),
                Icon(Icons.keyboard_arrow_right, size: 20.sp, color: Color(0xFFFFFFFF).withOpacity(.7)),
              ],
            ),
            SizedBox(height: 14.h,),
            Expanded(
              child: PageView(
                physics: NeverScrollableScrollPhysics(),
                controller: pageController,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SleepDataScreen(),
                        SizedBox(height: 24.h,),

                        SleepDuration(),
                        SizedBox(height: 24.h,),
                        SRegularity(),

                        SizedBox(height: 24.h,),
                        EnvironmentNoise(),

                        SizedBox(height: 24.h,),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Column(
                      children: [
                        SleepMonthDataScreen(),
                        SizedBox(height: 24.h,),

                        SleepMonthDuration(),
                        SizedBox(height: 24.h,),
                        SleepMonthRegularity(),

                        SizedBox(height: 24.h,),
                        EnvironmentNoiseMonth(),

                        SizedBox(height: 24.h,),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            //SleepAtLineChart()
           // SleepChart()
          // LineChart()


          ],
        ),
      ),
    );
  }
}
