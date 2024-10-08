import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
      height: 400.h,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(() {
              // Use .value to access the reactive variable
              if (_controller.isAnimating.value == false) {
                return ClipRRect(
                  child: Image.asset(
                    'assets/sleep/ic_breath_in.webp',
                    fit: BoxFit.fill,
                    width: 145.w,
                    height: 145.w,
                  ),
                );
              }
              // Use .value here as well
              if (_controller.isAnimating.value == true) {
                return SizedBox(
                  width: 310.w,
                  height: 310.h,
                  child: RippleWave(
                    duration: const Duration(seconds: 60),
                    childTween: Tween(begin: 1, end: 1),
                    color: const Color(0xFFFFFFFF).withOpacity(.07),
                    repeat: false, // Ensure ripple repeats during animation
                    animationController: _controller.controller, // Controller that restarts animation
                    waveCount: 8,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(100),
                      child: Image.asset(
                        'assets/sleep/ic_breath_out.webp',
                        fit: BoxFit.fill,
                        width: 145.w,
                        height: 145.w,
                      ),
                    ),
                  ),
                );
              }

              // Provide a fallback if neither condition is met
              return SizedBox.shrink();
            }),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _controller.onClose(); // Dispose the controller when done
    super.dispose();
  }
}