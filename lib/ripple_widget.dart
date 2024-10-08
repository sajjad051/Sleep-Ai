import 'package:ai_sleep/widget/Rotation_transition.dart';
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

class _RippleWidgetState extends State<RippleWidget> with SingleTickerProviderStateMixin {
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
      height: 438.h,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(child: SizedBox(height:438.w, width:438.w,child: RotationTransitionExample())),
              Positioned(
                top: 37.h,
                left: 20.w,
                child: SizedBox(
                  width: 350.w,
                  height: 350.h,
                  child: Obx(() {
                    return RippleWave(
                      duration: const Duration(seconds: 10),
                      childTween: Tween(begin: 1, end: 1),
                      color: _controller.isAnimating.value? Color(0xFFFFFFFF).withOpacity(.07) : Colors.transparent,
                      repeat: false,
                      animationController: _controller.controller,
                      waveCount: _controller.isAnimating.value? 8:-1,
                      child: _controller.isAnimating.value // Access reactive value with .value
                          ?
                      ClipRRect(
                        child: Image.asset(
                          'assets/sleep/ic_breath_out.webp',
                          fit: BoxFit.fill,
                          width: 145.w,
                          height: 145.w,
                        ),
                      )

                          : ClipRRect(
                        child: Image.asset(
                          'assets/sleep/ic_breath_in.webp',
                          fit: BoxFit.fill,
                          width: 145.w,
                          height: 145.w,
                        ),
                      )
                    );
                  }),
                ),
              ),

            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose(); // No need to call onClose manually, GetX handles cleanup
  }
}
