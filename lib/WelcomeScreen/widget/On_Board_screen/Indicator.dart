import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'onBoardControler.dart';

class Indicator extends StatelessWidget {
  final bool isActive;

  const Indicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    // Retrieve the existing instance of OnBoardController
    final OnBoardController _onBoardController = Get.find<OnBoardController>();

    return Obx(() {
      return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 18.w,
            height: 18.h,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: CircularProgressIndicator(
              value: isActive ? 1 : 0,
              strokeWidth: 1,
              backgroundColor: Colors.transparent,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.deepPurpleAccent),
            ),
          ),
          if (_onBoardController.pageIndex.value != 4)
            AnimatedContainer(
              duration: const Duration(milliseconds: 500),
              width: 12.w,
              height: 12.h,
              decoration: BoxDecoration(
                color: isActive ? Colors.deepPurpleAccent : Colors.white.withOpacity(.2),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
        ],
      );
    });
  }
}
