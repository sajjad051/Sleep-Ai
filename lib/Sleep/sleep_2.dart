import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Route/Routes.dart';

class Sleep2 extends StatelessWidget {
  const Sleep2({super.key});

  @override
  Widget build(BuildContext context) {
    // Dummy data for the alarms
    final List<String> alarms = [
      "07:00 AM",
      "08:00 AM",
      "09:00 AM",
      "10:00 AM",
      "11:00 AM",
      "12:00 PM",
    ];
    final List<String> weekDays = [
      "weekdays",
      "Mon Tue Wed",
      "Fri Sat",
      "Sat Sun Mon Tue Wed",
      "Friday AM",
      "12:00 PM",
    ];

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset(
              "assets/sleep/sleep_bg.webp",
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 35, left: 20, right: 20,bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Image.asset("assets/sleep/Vector.webp"),
                        SizedBox(width: 20),
                        Text(
                          "Alarm",
                          style: TextStyle(
                            color: Color(0xFF020825),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    InkWell(
                      onTap: () {
                        Get.toNamed(Routes.sleep3);
                      },
                      child: SvgPicture.asset(
                        "assets/sleep/plusBtn.svg",
                        height: 23.5,
                        width: 23.5,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 60),
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Color(0xFF020825).withOpacity(.6),
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black12,
                        blurRadius: 5,
                        spreadRadius: 2,
                      ),
                    ],
                  ),
                  child: Column(
                    children: List.generate(
                      alarms.length > 5 ? 5 : alarms.length,
                          (index) {
                        return Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      alarms[index],
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 22,
                                      ),
                                    ),
                                    SizedBox(height: 5),
                                    Text(
                                      weekDays[index],
                                      style: TextStyle(
                                        color: Color(0xFFFFFFFF),
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),

                                Row(
                                  children: [
                                    Switch(
                                      value: true, // Control this with state
                                      onChanged: (value) {
                                        // Handle switch toggle
                                      },
                                    ),
                                    IconButton(
                                      icon: Icon(Icons.more_vert,color: Color(0xFFFFFFFF),),

                                      onPressed: () {
                                        // Handle more options
                                      },
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            // Add Divider between alarms, but not after the last one
                            if (index < (alarms.length > 5 ? 5 : alarms.length) - 1)
                              Divider(
                                color: Colors.grey.shade300,
                                thickness: 1,
                              ),
                          ],
                        );
                      },
                    ),
                  ),
                ),
                Spacer(),
                CustomBottomButtom(),
              ],

            ),
          ),
        ],
      ),
    );
  }
}






// import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';
// import 'package:get/get.dart';
// import '../Home/Widget/alarm_tile.dart';
// //import '../Home/controler/alarm_controller.dart'; // Adjust import path to your actual controller
// import '../Home/controler/sleep1_coltroler.dart';
// import '../Home/controler/sleep2_controler.dart';
// import '../Route/Routes.dart';
//
// class Sleep2 extends StatelessWidget {
//   Sleep2({super.key});
//
//   final AlarmController alarmController = Get.put(AlarmController());
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           SizedBox(
//             height: double.infinity,
//             width: double.infinity,
//             child: Image.asset(
//               "assets/sleep/sleep_bg.webp",
//               fit: BoxFit.cover,
//             ),
//           ),
//           Obx(
//               () => Padding(
//               padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // Top Row
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           Image.asset("assets/sleep/Vector.webp"),
//                           SizedBox(width: 20),
//                           Text(
//                             "Alarm",
//                             style: TextStyle(
//                               color: Color(0xFF020825),
//                               fontSize: 16,
//                               fontWeight: FontWeight.w700,
//                             ),
//                           ),
//                         ],
//                       ),
//                       InkWell(
//                         onTap: () {
//                           Get.toNamed(Routes.sleep3);
//                         },
//                         child: SvgPicture.asset(
//                           "assets/sleep/plusBtn.svg",
//                           height: 23.5,
//                           width: 23.5,
//                         ),
//                       ),
//                     ],
//                   ),
//                   SizedBox(height: 40),
//                   // Alarm List Container
//                    SizedBox(
//                       height: Get.height * .52, // Set a specific height for the ListView
//                      width: Get.width,
//                       child: ListView.builder(
//                         itemCount: alarmController.alarms.length,
//                         itemBuilder: (context, index) {
//                           final alarm = alarmController.alarms[index];
//                           return AlarmTile(
//                             alarm: alarm,
//                             onToggle: (value) => alarmController.toggleAlarm(index),
//                           );
//                         },
//                       ),
//                     ),
//
//                   Spacer(),
//                   // Bottom Row of Icons
//                  CustomBottomButtom(),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
