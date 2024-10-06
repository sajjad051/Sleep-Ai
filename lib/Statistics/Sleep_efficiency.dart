import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class EfficiencyLineChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Color(0xFF061238),
          borderRadius: BorderRadius.circular(16.r)
      ),
      width: Get.width,  // Container width
      height: 300.h, // Container height
      child: LineChart(
        LineChartData(
          gridData: FlGridData(show: true),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 50,
                getTitlesWidget: (value, meta) {
                  var times = ['100%', '80%', '60%', '40%', '20%', '0%'];
                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    child: Text(
                      times[(times.length - 1 - value.toInt()) % times.length],
                      style: GoogleFonts.inter(fontSize: 12.sp, fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF).withOpacity(.6)),
                    ),
                  );
                },
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 40,
                getTitlesWidget: (value, meta) {
                  const days = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
                  return SideTitleWidget(
                    axisSide: meta.axisSide,
                    child: Text(
                      days[value.toInt()],
                      style: GoogleFonts.inter(fontSize: 14.sp, fontWeight: FontWeight.w400,color: Color(0xFFFFFFFF).withOpacity(.6)),
                    ),
                  );
                },
              ),
            ),
          ),
          borderData: FlBorderData(
            show: true,
            border: Border.all(color: Colors.grey, width: 1),
          ),
          minX: 0,
          maxX: 6,  // Fit 7 days (0 to 6)
          minY: 0,
          maxY: 5,  // Adjusted to fit the time scale (0 to 10)
          lineBarsData: [
            LineChartBarData(
              spots: [
                FlSpot(0, 4),  // Example values
                FlSpot(1, 4),
                FlSpot(2, 3),
                FlSpot(3, 4),
                FlSpot(4, 4),
                FlSpot(5, 1),
                FlSpot(6, 4),
              ],
              isCurved: true,
              color: Colors.blue,
              barWidth: 2.w,
              belowBarData: BarAreaData(show: true),
            ),
          ],
        ),
      ),
    );

  }
}
