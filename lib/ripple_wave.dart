import 'package:ai_sleep/ripple_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ripple_wave/ripple_wave.dart';

class RippleWaveScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final RippleController rippleController = Get.put(RippleController());

    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text('Ripple Wave Animation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 310.w,
            height: 310.h,
            child: RippleWave(
              duration: Duration(minutes: 4),
              childTween: Tween(begin: 1, end: 1),
              color: Color(0xFFFFFFFF).withOpacity(.07),
              repeat: false,
              animationController: rippleController.rippleAnimation,
              waveCount: 8,
              child: Center(
                child: Text(
                  "Breathe Out",
                  style: GoogleFonts.inter(
                    color: Colors.black,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 20),
          Obx(() {
            return ElevatedButton(
              onPressed: () {
                if (rippleController.isAnimating.value) {
                  rippleController.resetAnimation(); // Reset when stopped
                } else {
                  rippleController.startOrStopAnimation(); // Start/Stop based on state
                }
              },
              child: Text(rippleController.isAnimating.value ? 'Stop' : 'Reset'),
            );
          }),
        ],
      ),
    );
  }
}
