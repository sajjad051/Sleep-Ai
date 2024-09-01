
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:wheel_picker/wheel_picker.dart';

class WheelPickerExample extends StatelessWidget {
  const WheelPickerExample({super.key});

  @override
  Widget build(BuildContext context) {
    final secondsWheel = WheelPickerController(itemCount: 10);
    const textStyle = TextStyle(fontSize: 32.0, height: 1.5);

    Timer.periodic(const Duration(seconds: 1), (_) => secondsWheel.shiftDown());

    return WheelPicker(
      builder: (context, index) => Text("$index", style: textStyle),
      controller: secondsWheel,
      selectedIndexColor: Colors.blue,
      onIndexChanged: (index) {
        print("On index $index");
      },
      style: WheelPickerStyle(
        itemExtent: textStyle.fontSize! * textStyle.height!, // Text height
        squeeze: 1.25,
        diameterRatio: .8,
        surroundingOpacity: .25,
        magnification: 1.2,
      ),
    );
  }
}



