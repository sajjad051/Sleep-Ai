import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'controler/time_sleep_controller.dart';


class TimePickerScreen extends StatelessWidget {
  final List<String> timeOptions = [
    '17:00',
    '18:05',
    '19:10',
    '20:15',
    '21:20',
    '22:25',
  ];

  @override
  Widget build(BuildContext context) {
    // Initialize the GetX controller
    final TimePickerController timePickerController = Get.put(TimePickerController());

    return Scaffold(
      body: Center(
        child: Container(
          height: 243,  // Set the height
          width: Get.width,   // Set the width
          decoration: BoxDecoration(
            color: Colors.white,  // Optional background color
            borderRadius: BorderRadius.circular(12),  // Optional rounded corners

          ),
          child: Obx(() => CupertinoPicker(
            itemExtent: 60.0, // height of each item
            scrollController: FixedExtentScrollController(
              initialItem: timePickerController.selectedIndex.value,
            ),
            onSelectedItemChanged: (index) {
              // Update the selected index in the GetX controller
              timePickerController.updateIndex(index);
            },
            children: timeOptions.map((time) {
              final isSelected = timeOptions.indexOf(time) == timePickerController.selectedIndex.value;
              return Center(
                child: Text(
                  time,
                  style: TextStyle(
                    fontSize: isSelected ? 30.0 : 20.0,
                    color: isSelected ? Colors.black : Colors.grey,
                  ),
                ),
              );
            }).toList(),
          )),
        ),
      ),
    );
  }
}


