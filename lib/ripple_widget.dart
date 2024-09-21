import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:ripple_wave/ripple_wave.dart';
import 'animation_controler.dart'; // Import the controller

class RippleWidget extends StatefulWidget {
  const RippleWidget({Key? key}) : super(key: key);

  @override
  State<RippleWidget> createState() => _RippleWidgetState();
}

class _RippleWidgetState extends State<RippleWidget>
    with SingleTickerProviderStateMixin {
  late final AnimationControllerX _controller;

  @override
  void initState() {
    super.initState();
    _controller = Get.put(AnimationControllerX());
    _controller.initController(this); // Initialize with the TickerProvider
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height:  400.h,
        child:  Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 310.w,
                  height: 310.h,
                  child: RippleWave(
                    duration: Duration(seconds: 60),
                    childTween: Tween(begin: 1, end: 1),
                    color: Color(0xFFFFFFFF).withOpacity(.07),
                    repeat: false,
                    animationController: _controller.controller,
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
              ],
            ),
          )


    );
  }

  @override
  void dispose() {
    _controller.onClose(); // Dispose the controller when done
    super.dispose();
  }
}
