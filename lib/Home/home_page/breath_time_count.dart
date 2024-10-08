import 'package:ai_sleep/ripple_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_timer/linear_timer.dart';

import '../../Route/Routes.dart';
import '../../animation_controler.dart';
import '../../linear_timer.dart';
import '../../widget/custom_button.dart';

class BreathTimeCount extends StatelessWidget {
  BreathTimeCount({super.key});

  //final AnimationControllerX controllerX = Get.put(AnimationControllerX());

  // late LinearTimerController timerController1 = LinearTimerController(this as TickerProvider);

   String txt= '03:15';
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
                "Bedtime Exercise 4 min",
                style: GoogleFonts.inter(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    color: Color(0xFFFFFFFF).withOpacity(.8)),
              ),
              leading: InkWell(
                  onTap: () {
                    Navigator.pop(context);
                    // timerController1.reset();
                  },
                  child: Icon(Icons.arrow_back, color: Colors.white)),
              backgroundColor: Colors.transparent,
            ),
            body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 130.h,
                  ),

                 // controllerX.isAnimating == true ?
                   const RippleWidget(),

                  // Center(
                  //     child: ClipRRect(
                  //       borderRadius: BorderRadius.circular(100),
                  //       child: Image.asset(
                  //         'assets/sleep/ic_sunset.webp', fit: BoxFit.cover,
                  //         width: 100,
                  //         height: 100,),
                  //     )) : const RippleWidget(),

                  Center(
                      child: Text(
                        "$txt",
                        style: GoogleFonts.inter(
                            fontSize: 28.sp,
                            fontWeight: FontWeight.w300,
                            color: Color(0xFFFFFFFF).withOpacity(.7)),
                      )),


                  Spacer(),
                  LinearWidgetDemo(onTap: () {
                    controllerX.toggleAnimation();
                  },),


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
