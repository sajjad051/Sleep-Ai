import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AnimationControllerX extends GetxController {
  late final AnimationController _animationController;
  var isAnimating = false.obs;


  void initController(TickerProvider tickerProvider) {
    _animationController = AnimationController(
      duration: const Duration(seconds: 5),
      vsync: tickerProvider,
    );
  }

  void toggleAnimation() {
    if (isAnimating.value) {
      _animationController.stop(); // Stop animation instead of disposing
      isAnimating.value = false;
    } else {
      _animationController.repeat();
      // Restart animation
      isAnimating.value = true;
    }
  }



  @override
  // void onClose() {
  //   // Dispose the animation controller when the controller is disposed
  //  // _animationController.dispose();
  //   super.onClose();
  // }

  AnimationController get controller => _animationController;
}
