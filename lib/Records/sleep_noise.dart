import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';


class SleepNoisesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.h,
      width: Get.width,
      decoration: BoxDecoration(
        color: Color(0xFF061238), // Background color
        borderRadius: BorderRadius.circular(16.r),
      ),
      child: Padding(
        padding:
         EdgeInsets.only(top: 31.h, left: 15.w, right: 15.w, bottom: 22.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Sleep Noises",
              style: TextStyle(
                  color: Color(0xFFFFFFFF),
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500),
            ),

            SizedBox(height: 10.h),
            Row(
              children: [
                Text(
                  "03:12",
                  style: GoogleFonts.inter(
                      color: Color(0xFF848BBD),
                      fontSize: 11,
                      fontWeight: FontWeight.w400),
                ),

              SizedBox(width: 10.h,),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Snoring ",
                      style: GoogleFonts.inter(
                          color: Color(0xFF848BBD),
                          fontSize:8.sp,
                      ),
                    ),
                    Text(
                      "1 min",
                      style: GoogleFonts.inter(
                          color: Color(0xFF848BBD).withOpacity(.7),
                          fontSize: 11.sp,
                          fontWeight: FontWeight.w500),
                    ),

                  ],
                ),



              ],
            )

          ],
        ),
      ),
    );
    // return Scaffold(
    //   backgroundColor: Color(0xFF0C163F), // Navy background color
    //   body: Container(
    //     child: Padding(
    //       padding: const EdgeInsets.all(16.0),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Text(
    //             'Sleep Noises',
    //             style: TextStyle(
    //               color: Colors.white,
    //               fontSize: 22,
    //               fontWeight: FontWeight.bold,
    //             ),
    //           ),
    //           SizedBox(height: 20),
    //           _buildNoiseItem('03:12', 'Snoring', '1 min'),
    //           SizedBox(height: 20),
    //           _buildNoiseItem('4:32', 'Snoring', '1 min'),
    //         ],
    //       ),
    //     ),
    //   ),
    // );
  }

  // Widget to create each noise item row
  Widget _buildNoiseItem(String time, String label, String duration) {
    return Row(
      children: [
        Text(
          time,
          style: TextStyle(color: Colors.white70, fontSize: 16),
        ),
        SizedBox(width: 10),
        _buildPlayButton(),
        SizedBox(width: 10),
        _buildWaveform(),
        SizedBox(width: 10),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              label,
              style: TextStyle(color: Colors.white70, fontSize: 14),
            ),
            Text(
              duration,
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ],
    );
  }

  // Play button widget
  Widget _buildPlayButton() {
    return Icon(
      Icons.play_arrow,
      color: Color(0xFF2BE3EF), // Cyan play button color
      size: 30,
    );
  }

  // Placeholder for waveform
  Widget _buildWaveform() {
    return Expanded(
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2), // Placeholder color for waveform
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}

