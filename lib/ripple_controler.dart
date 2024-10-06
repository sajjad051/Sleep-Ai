import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RippleController extends GetxController with GetTickerProviderStateMixin {
  late AnimationController rippleAnimation;
  var isAnimating = false.obs;

  @override
  void onInit() {
    super.onInit();
    rippleAnimation = AnimationController(
      vsync: this,
      duration:  Duration(seconds: 2),
    );

    rippleAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        isAnimating.value = false; // Reset the state when animation is completed
      }
    });
  }

  void startOrStopAnimation() {
    if (rippleAnimation.isAnimating) {
      rippleAnimation.stop();
      isAnimating.value = false;
    } else {
      rippleAnimation.forward(from: 0); // Start from the beginning
      isAnimating.value = true;
    }
  }

  void resetAnimation() {
    rippleAnimation.reset();
    isAnimating.value = false;
  }

  @override
  void onClose() {
    rippleAnimation.dispose();
    super.onClose();
  }
}
