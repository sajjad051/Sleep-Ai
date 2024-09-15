import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
//import 'package:responsive_sizer/responsive_sizer.dart';

class CustomBarChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 103,
      width: Get.width,
      child: BarChart(
        BarChartData(
          barGroups: _getBarGroups(),
          borderData: FlBorderData(show: false),
          gridData: FlGridData(show: false),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            bottomTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
        ),
      ),
    );
  }

  List<BarChartGroupData> _getBarGroups() {
    return [
      _makeBarData(0, 12, Colors.orange),
      _makeBarData(1, 10, Colors.yellow),
      _makeBarData(2, 8, Colors.cyan),
      _makeBarData(3, 10, Colors.pink),
      _makeBarData(4, 8, Colors.green),
    ];
  }

  BarChartGroupData _makeBarData(int x, double y, Color color) {
    return BarChartGroupData(
      x: x,
      barRods: [
        BarChartRodData(
          toY: y,
          color: color,
          width: 20,
          borderRadius: BorderRadius.circular(0),
        ),
      ],
    );
  }
}
