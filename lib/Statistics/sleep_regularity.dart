import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SleepRegularity extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xFF061238), // Background color
        borderRadius: BorderRadius.circular(16),
      ),
      height: 340.h, // Set the height of the container
      width: Get.width,
      child: Padding(
        padding:  EdgeInsets.only(left: 42.h),
        child: BarChart(
          BarChartData(
            alignment: BarChartAlignment.spaceBetween,
            maxY: 10, // Maximum Y-axis value, for 10 hours of sleep
            barGroups: _createBarGroups(),
            titlesData: FlTitlesData(
              bottomTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    const style = TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    );

                    Widget text;
                    switch (value.toInt()) {
                      case 0:
                        text = Text('Mon', style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)));
                        break;
                      case 1:
                        text = Text('Tue', style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)));
                        break;
                      case 2:
                        text = Text('Wed', style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)));
                        break;
                      case 3:
                        text = Text('Thu', style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)));
                        break;
                      case 4:
                        text = Text('Fri', style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)));
                        break;
                      case 5:
                        text = Text('Sat', style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)));
                        break;
                      case 6:
                        text = Text('Sun', style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)));
                        break;
                      default:
                        text = Text('', style: TextStyle(fontSize: 11.sp, color: Color(0xFFFFFFFF).withOpacity(.6)));
                        break;
                    }
                    return SideTitleWidget(
                      axisSide: meta.axisSide,
                      space: 10, // Space between titles and the axis
                      child: text,
                    );
                  },
                  reservedSize: 40,
                ),
              ),
              leftTitles: AxisTitles(
                sideTitles: SideTitles(
                  showTitles: true,
                  getTitlesWidget: (double value, TitleMeta meta) {
                    const style = TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    );
                    return Text('${value.toInt()}h', style: style);
                  },
                  interval: 1.5, // Show intervals at every 2 hours
                  reservedSize: 42,
                ),
              ),
            ),
            gridData: FlGridData(
              show: true,
              drawVerticalLine: false, // Hide vertical grid lines
              getDrawingHorizontalLine: (value) {
                return FlLine(
                  color: Colors.white.withOpacity(0.3), // Line color
                  strokeWidth: 1, // Line width
                );
              },
            ),
            borderData: FlBorderData(
              show: false,
            ),
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> _createBarGroups() {
    return [
      BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(
            toY: 7.5 , // Sleep duration for Monday
            color: Colors.transparent, // Set the color to transparent
            gradient: LinearGradient(
              colors: [Color(0xFFFA5C8C), Color(0xFFBF1655)], // Use your desired colors
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 1,
        barRods: [
          BarChartRodData(
            toY: 7, // Sleep duration for Tuesday
            color: Color(0xFFFA2CB25),
            gradient: LinearGradient(
              colors: [Color(0xFFFA2CB25), Color(0xFF93BF0E)], // Use your desired colors
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ],
      ),
      BarChartGroupData(
        x: 2,
        barRods: [
          BarChartRodData(
            toY: 9, // Sleep duration for Wednesday (longest sleep)
            color: Colors.purpleAccent,
          ),
        ],
      ),
      BarChartGroupData(
        x: 3,
        barRods: [
          BarChartRodData(
            toY: 6, // Sleep duration for Thursday
            color: Colors.purpleAccent,
          ),
        ],
      ),
      BarChartGroupData(
        x: 4,
        barRods: [
          BarChartRodData(
            toY: 7, // Sleep duration for Friday
            color: Colors.purpleAccent,
          ),
        ],
      ),
      BarChartGroupData(
        x: 5,
        barRods: [
          BarChartRodData(
            toY: 8, // Sleep duration for Saturday
            color: Colors.purpleAccent,
          ),
        ],
      ),
      BarChartGroupData(
        x: 6,
        barRods: [
          BarChartRodData(
            toY: 7.5, // Sleep duration for Sunday
            color: Colors.purpleAccent, // Use 'color' instead of 'colors'
          ),
        ],
      ),


    ];
  }
}
