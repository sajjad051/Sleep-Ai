import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SliderIndicator extends StatelessWidget {
  final bool isActive;

  const SliderIndicator({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Stack(
        alignment: Alignment.center,
        children: [
          Container(
            width: 18,
            height: 18,
            margin: const EdgeInsets.symmetric(horizontal: 4.0),
            child: CircularProgressIndicator(
              value: isActive ? 1 : 0,
              strokeWidth: 1,
              backgroundColor: Colors.transparent,
              valueColor: const AlwaysStoppedAnimation<Color>(Colors.deepPurpleAccent),
            ),
          ),
          AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: 12,
            height: 12,
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
