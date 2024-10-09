import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RotationTransitionExample extends StatefulWidget {
  const RotationTransitionExample({super.key});

  @override
  State<RotationTransitionExample> createState() =>
      _RotationTransitionExampleState();
}

/// [AnimationController]s can be created with `vsync: this` because of
/// [TickerProviderStateMixin].
///
class _RotationTransitionExampleState extends State<RotationTransitionExample>
    with TickerProviderStateMixin {
  late bool isAnimating = false;

  late AnimationController _controller;
  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: Duration(seconds: 3))
          ..repeat();

  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
  void toggleCircleAnimation() {
    setState(() {
      if (isAnimating) {
        _controller.stop(); // Stop the animation
      } else {
        _controller.repeat(); // Start the animation again
      }
     // isAnimating = !isAnimating; // Toggle the animation state
    });
  }
  @override
  Widget build(BuildContext context) {
    return  Center(
        child: RotationTransition(
          turns: _controller,
          child: Stack(
            children: [
              Container(
                width: 338.0.w,
                height: 338.0.w,
                decoration: BoxDecoration(
                  color: Colors
                      .transparent, // Background color of the circular container
                  shape: BoxShape.circle, // Make the container circular
                  border: Border.all(
                    color: Colors.white, // Red border color
                    width: 1.0.w, // Border width
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(34),
                width: 17.h,
                height: 17.h,
                decoration: BoxDecoration(
                  color: Colors
                      .white, // Background color of the circular container
                  shape: BoxShape.circle, // Make the container circular
                ),
              ),
            ],
          ),
        ),

    );
  }
}
