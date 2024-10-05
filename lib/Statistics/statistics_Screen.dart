import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:ai_sleep/Statistics/Sleep_efficiency.dart';
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
import 'package:google_fonts/google_fonts.dart';

import '../Home/Widget/navigation_controller.dart';

class StatisticsScreen extends StatelessWidget {
  StatisticsScreen({super.key});

  final PageController pageController = Get.put(PageController());

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      onPopInvoked:(_) async {
        Get.find<NavigationController>().activeIndex.value = 0;
        Get.find<NavigationController>().pageController.jumpToPage(0);

        // Get.toNamed(Routes.homeScreen);
      },
      child: Scaffold(
        backgroundColor: const Color(0xFF020825),
        // bottomNavigationBar: CustomBottomButtom(),
        body: Padding(
          padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 32.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Statistics",
                style: TextStyle(
                  fontSize: 22.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 22.h),
              Center(child: CustomRadioButton()),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.keyboard_arrow_left,
                      size: 20.sp, color: Color(0xFFFFFFFF).withOpacity(.7)),
                  SizedBox(
                    width: 10.w,
                  ),
                  Text(
                    'Aug 21 - Aug 28',
                    style: TextStyle(color: Color(0xFFFFFFFF), fontSize: 16.sp),
                  ),
                  SizedBox(width: 10.w),
                  Icon(Icons.keyboard_arrow_right,
                      size: 20.sp, color: Color(0xFFFFFFFF).withOpacity(.7)),
                ],
              ),
              SizedBox(
                height: 14.h,
              ),
              Expanded(
                child: PageView(
                  physics: NeverScrollableScrollPhysics(),
                  controller: pageController,
                  children: [

                    //Week
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SleepDataScreen(),
                          SizedBox(
                            height: 24.h,
                          ),
                          SleepDuration(),
                          SizedBox(
                            height: 24.h,
                          ),
                          SRegularity(),
                          SizedBox(
                            height: 24.h,
                          ),


                          //Sleep at
                          Container(
                            height: 400.h,
                            decoration: BoxDecoration(
                                color: Color(0xFF061238),
                                borderRadius: BorderRadius.circular(16.r)),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 18,top: 23),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Sleep at",style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.w500)),
                                  LineChartWidget(),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 24.h,
                          ),


                          //Wake at
                          Container(
                            height: 400.h,
                            decoration: BoxDecoration(
                                color: Color(0xFF061238),
                                borderRadius: BorderRadius.circular(16.r)),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 18,top: 23),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Wake at",style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.w500)),
                                  LineChartWidget(),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 24.h,
                          ),

                          //Sleep Efficiency
                          Container(
                            height: 400.h,
                            decoration: BoxDecoration(
                                color: Color(0xFF061238),
                                borderRadius: BorderRadius.circular(16.r)),
                            child: Padding(
                              padding:  EdgeInsets.only(left: 18.w,top: 23.h),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text("Sleep Efficiency",style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.w500)),
                                  EfficiencyLineChart(),
                                ],
                              ),
                            ),
                          ),

                          SizedBox(
                            height: 24.h,
                          ),
                          EnvironmentNoise(),
                          SizedBox(
                            height: 24.h,
                          ),
                        ],
                      ),
                    ),

                    //Month
                    SingleChildScrollView(
                      child: Column(
                        children: [
                          SleepMonthDataScreen(),
                          SizedBox(
                            height: 24.h,
                          ),
                          SleepMonthDuration(),
                          SizedBox(
                            height: 24.h,
                          ),
                          SleepMonthRegularity(),
                          SizedBox(
                            height: 24.h,
                          ),
                          EnvironmentNoiseMonth(),
                          SizedBox(
                            height: 24.h,
                          ),
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
      ),
    );
  }
}
