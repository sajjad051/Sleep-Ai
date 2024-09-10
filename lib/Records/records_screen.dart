import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:ai_sleep/Records/SleepQuality.dart';
import 'package:ai_sleep/Records/custom_bar_card.dart';
import 'package:ai_sleep/Records/date_picker.dart';
import 'package:ai_sleep/Records/progress_card.dart';
import 'package:ai_sleep/Records/progress_widget.dart';
import 'package:ai_sleep/Records/record_sleep_data.dart';
import 'package:ai_sleep/Records/sleep_noise.dart';
import 'package:date_picker_timeline/date_picker_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'date_picker_controler.dart';

class RecordsScreen extends StatelessWidget {
  RecordsScreen({super.key});
  final DatePickerControllerr controller = Get.put(DatePickerControllerr());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF020825),
      bottomNavigationBar: CustomBottomButtom(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 24, right: 24, top: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DatePickerWidget(),
              const SizedBox(height: 16),
              ProgressWidget(),
              SizedBox(height: 15),
              Sleepquality(),
              SizedBox(height: 15),
              RecordSleepData(),
              SizedBox(height: 15),
              SleepNoisesScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
