import 'package:flutter/cupertino.dart';
import 'package:get/state_manager.dart';

class NavigationController extends GetxController {
  var activeIndex = 0.obs;

  PageController pageController = PageController(initialPage: 0);

  void setActiveIndex(int index) {
    if ((index - activeIndex.value).abs() == 1) {
      pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    } else {
      pageController.jumpToPage(index);
    }

    // Update the active index after the jump/animation
    activeIndex.value = index;
  }

  var clickStartTrack = 0.obs;
 // var clickPlus = false.obs;

}
