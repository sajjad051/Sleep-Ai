import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';


class SleepDuration extends StatelessWidget {
  SleepDuration({Key? key}) : super(key: key);

  late double width;

  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width-40.w;
    return Container(
      padding:  EdgeInsets.symmetric(vertical: 30.h, horizontal: 20.w),
      decoration: BoxDecoration(
          color: Color(0xFF061238),
          borderRadius: BorderRadius.circular(8)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Sleep Duration",style: GoogleFonts.inter(fontSize: 14.sp, color: Colors.white, fontWeight: FontWeight.w500)),
           SizedBox(height: 20.h,),


          SizedBox(
            width : width,
            height: 267.h,
            child: Stack(
              children: [

                Container(
                  // color: Colors.blue,
                  padding: EdgeInsets.only(bottom: 20.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      horaizantalLine("50"),
                      horaizantalLine("40"),
                      horaizantalLine("30"),
                      horaizantalLine("20"),
                      horaizantalLine("10"),
                      horaizantalLine("0")
                    ],
                  ),
                ),

                Container(
                  padding: EdgeInsets.only(left: 40, top: 15, bottom: 35),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.5, Color(0xFFFA5C8C), Color(0xFFBF1655)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.7,Color(0xFF6E1DD6),Color(0xFF061A7A)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.6, Color(0xFFA2CB25), Color(0xFF93BF0E)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 1.0,Color(0xFF6E1DD6),Color(0xFF061A7A)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.4,Color(0xFF6E1DD6),Color(0xFF061A7A)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.2,Color(0xFF6E1DD6),Color(0xFF061A7A)),
                          ],
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            bar((width * 0.6) - 30, 0.8,Color(0xFF6E1DD6),Color(0xFF061A7A)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),


                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    padding: const EdgeInsets.only(left: 30, bottom: 10),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Mon", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Tue", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: SizedBox(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Wed", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Thu", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Fri", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Sat", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                          flex: 1,
                          child: Container(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Sun", style: dayStyle(),),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )


              ],
            ),
          ),


          const SizedBox(height: 20,),

        ],
      ),
    );
  }

  Row horaizantalLine(String name){
    return Row(
      children: [
        Container(
          height: 30,
          width: 30,
          alignment: Alignment.centerLeft,
          child: Text(name, style: const TextStyle(color: Colors.white38),),
        ),
        //SizedBox(width: 10,),
        Flexible(
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: (((width - 30) / 7) - 20)/4),
            color: Colors.white12,
            height: 1,
          ),
        )
      ],
    );
  }

  TextStyle dayStyle(){
    return TextStyle(
        fontSize: 12,
        color: Colors.white70
    );
  }

  Container bar(double height, double value, Color color1, Color color2){
    return Container(
      width: 20,
      height: height * value,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(40.0),
          topLeft: Radius.circular(40.0),
        ),

        gradient: LinearGradient(
            colors: [
              color1,
              color2
            ],
            begin: const FractionalOffset(0.0, 1.0),
            end: const FractionalOffset(1.0, 0.0),
            stops: [0.0, 1.0],
            tileMode: TileMode.clamp),
      ),
    );
  }
}








// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:get/get.dart';
//
// class SleepDuration extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: Color(0xFF061238), // Background color
//         borderRadius: BorderRadius.circular(16),
//       ),
//       height: 300.h, // Set the height of the container
//       width: Get.width,
//       child: Padding(
//         padding:  EdgeInsets.only(left: 42.h),
//         child: BarChart(
//           BarChartData(
//             alignment: BarChartAlignment.spaceBetween,
//             maxY: 10, // Maximum Y-axis value, for 10 hours of sleep
//             barGroups: _createBarGroups(),
//             titlesData: FlTitlesData(
//               bottomTitles: AxisTitles(
//                 sideTitles: SideTitles(
//                   showTitles: true,
//                   getTitlesWidget: (double value, TitleMeta meta) {
//                     const style = TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 14,
//                     );
//
//                     Widget text;
//                     switch (value.toInt()) {
//                       case 0:
//                         text = Text('Mon', style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)));
//                         break;
//                       case 1:
//                         text = Text('Tue', style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)));
//                         break;
//                       case 2:
//                         text = Text('Wed', style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)));
//                         break;
//                       case 3:
//                         text = Text('Thu', style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)));
//                         break;
//                       case 4:
//                         text = Text('Fri', style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)));
//                         break;
//                       case 5:
//                         text = Text('Sat', style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)));
//                         break;
//                       case 6:
//                         text = Text('Sun', style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)));
//                         break;
//                       default:
//                         text = Text('', style: TextStyle(fontSize: 11, color: Color(0xFFFFFFFF).withOpacity(.6)));
//                         break;
//                     }
//                     return SideTitleWidget(
//                       axisSide: meta.axisSide,
//                       space: 15, // Space between titles and the axis
//                       child: text,
//                     );
//                   },
//                   reservedSize: 40,
//                 ),
//               ),
//               leftTitles: AxisTitles(
//                 sideTitles: SideTitles(
//                   showTitles: true,
//                   getTitlesWidget: (double value, TitleMeta meta) {
//                     const style = TextStyle(
//                       color: Colors.white,
//                       fontWeight: FontWeight.bold,
//                       fontSize: 12,
//                     );
//                     return Text('${value.toInt()}h', style: style);
//                   },
//                   interval: 2, // Show intervals at every 2 hours
//                   reservedSize: 40,
//                 ),
//               ),
//             ),
//             gridData: FlGridData(
//               show: true,
//               drawVerticalLine: false, // Hide vertical grid lines
//               getDrawingHorizontalLine: (value) {
//                 return FlLine(
//                   color: Colors.white.withOpacity(0.3), // Line color
//                   strokeWidth: 1, // Line width
//                 );
//               },
//             ),
//             borderData: FlBorderData(
//               show: false,
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//
//   List<BarChartGroupData> _createBarGroups() {
//     return [
//       BarChartGroupData(
//         x: 0,
//         barRods: [
//           BarChartRodData(
//             toY: 4.5, // Sleep duration for Monday
//             color: Colors.transparent, // Set the color to transparent
//             gradient: LinearGradient(
//               colors: [Color(0xFFFA5C8C), Color(0xFFBF1655)], // Use your desired colors
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//             ),
//           ),
//         ],
//       ),
//       BarChartGroupData(
//         x: 1,
//         barRods: [
//           BarChartRodData(
//             toY: 7, // Sleep duration for Tuesday
//             color: Color(0xFFFA2CB25),
//             gradient: LinearGradient(
//               colors: [Color(0xFFFA2CB25), Color(0xFF93BF0E)], // Use your desired colors
//               begin: Alignment.bottomCenter,
//               end: Alignment.topCenter,
//             ),
//           ),
//         ],
//       ),
//       BarChartGroupData(
//         x: 2,
//         barRods: [
//           BarChartRodData(
//             toY: 9, // Sleep duration for Wednesday (longest sleep)
//             color: Colors.purpleAccent,
//           ),
//         ],
//       ),
//       BarChartGroupData(
//         x: 3,
//         barRods: [
//           BarChartRodData(
//             toY: 6, // Sleep duration for Thursday
//             color: Colors.purpleAccent,
//           ),
//         ],
//       ),
//       BarChartGroupData(
//         x: 4,
//         barRods: [
//           BarChartRodData(
//             toY: 7, // Sleep duration for Friday
//             color: Colors.purpleAccent,
//           ),
//         ],
//       ),
//       BarChartGroupData(
//         x: 5,
//         barRods: [
//           BarChartRodData(
//             toY: 8, // Sleep duration for Saturday
//             color: Colors.purpleAccent,
//           ),
//         ],
//       ),
//       BarChartGroupData(
//         x: 6,
//         barRods: [
//           BarChartRodData(
//             toY: 7.5, // Sleep duration for Sunday
//             color: Colors.purpleAccent, // Use 'color' instead of 'colors'
//           ),
//         ],
//       ),
//     ];
//   }
// }
