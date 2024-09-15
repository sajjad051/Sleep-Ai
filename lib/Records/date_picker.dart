import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'date_picker_controler.dart';
class DatePickerWidget extends StatelessWidget {
   DatePickerWidget({super.key});

   final DatePickerControllerr controller = Get.put(DatePickerControllerr());

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            "${getWeekdaysName(controller.todayDate.value.weekday)}, ${getMonthName(controller.todayDate.value.month)} ${controller.todayDate.value.day} ",
            style: TextStyle(fontSize: 22, color: Color(0xFFFFFFFF)),
          ),
           SizedBox(height: Get.height * .025 ),

          DatePicker(
            DateTime.now(),
            height: 100,
            width: 47, // Adjusted width to make the shape more circular
            daysCount: 7,
            dayTextStyle: const TextStyle(
              color: Colors.white54, // Day text color for unselected days
              fontSize: 12,
            ),
            dateTextStyle: const TextStyle(
              color: Color(0xFFFFFFFF),
              fontWeight:
              FontWeight.w500, // Date text color for unselected days
              fontSize: 16,
            ),
            monthTextStyle: TextStyle(fontSize: 0),
            initialSelectedDate: controller.selectedDate.value,
            selectionColor: const Color(0xFFFFFFFF).withOpacity(.2),
            //selectedTextColor: Colors.white,
            onDateChange: (date) {
              // Use controller to update the selected date
              controller.updateSelectedDate(date);
            },
          ),
        ],
      ),
    );
  }
}
