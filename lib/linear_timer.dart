import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:linear_timer/linear_timer.dart';

import 'Route/Routes.dart';

class LinearWidgetDemo extends StatefulWidget {
  final Function onTap;
  const LinearWidgetDemo({super.key, required this.onTap});

  @override
  State<LinearWidgetDemo> createState() => _LinearWidgetDemoState();
}

class _LinearWidgetDemoState extends State<LinearWidgetDemo>
    with TickerProviderStateMixin {
  late LinearTimerController timerController1 = LinearTimerController(this);
  bool isRunning = false; // Track if the timer is running

  @override
  void dispose() {
    timerController1.dispose();
    super.dispose();
  }

  // Toggle between starting and stopping the timer
  void toggleTimer() {
    if (isRunning) {
      timerController1.stop(); // Stop the timer if it's running
    } else {
      timerController1.start(); // Start the timer if it's stopped
    }
    setState(() {
      isRunning = !isRunning; // Toggle the running state
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Stack(
         children: [
           InkWell(
             onTap: () {
               toggleTimer();
               widget.onTap();
             },
             child: Container(
               width: Get.width, // Set the desired width
               height: 50, // Set the desired height
               decoration: BoxDecoration(
                 color: Color(0xFF9EA7DF), // Background color
                 borderRadius: BorderRadius.circular(30), // Rounded corners
               ),
               child: ClipRRect(
                 borderRadius: BorderRadius.circular(30), // Match the container's border radius
                 child: LinearTimer(
                   duration: const Duration(seconds: 60),
                   color: Color(0xFF7D50FF),
                   backgroundColor: Colors.transparent, // Ensure it blends with container background
                   controller: timerController1,
                   onTimerEnd: () {
                     timerController1.reset();
                    // Get.back();
                     setState(() {
                       isRunning = false; // Reset the state when the timer ends
                     });
                   },
                 ),
               ),
             ),
           ),
           Positioned.fill(
             child: Align(
               alignment: Alignment.center,
               child: InkWell(
                 onTap: () {
                   toggleTimer();
                   widget.onTap();
                 },
                 child: Text(
                   isRunning? "tap to Stop" : 'Tab to Start',
                   style: GoogleFonts.inter(color: Color(0xFFFFFFFF),fontSize: 16, fontWeight: FontWeight.w500,),
                 ),
               ),
             ),
           )

         ],
      );

  }
}
