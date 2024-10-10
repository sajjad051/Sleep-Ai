import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Custom_voice_message_view/Voice_Message_view_ex.dart';
import '../Custom_voice_message_view/voice_controller_ex.dart';


class SleepNoisesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
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

                VoiceMessageViewEX(
                  controller: VoiceControllerEx(
                    audioSrc:
                    'https://dl.solahangs.com/Music/1403/02/H/128/Hiphopologist%20-%20Shakkak%20%28128%29.mp3',
                    maxDuration: const Duration(seconds: 10),
                    isFile: false,
                    onComplete: () {
                      /// do something on complete
                    },
                    onPause: () {
                      /// do something on pause
                    },
                    onPlaying: () {
                      /// do something on playing
                    },
                    onError: (err) {
                      /// do something on error
                    },
                  ),
                  innerPadding: 12,
                  cornerRadius: 20,
                ),
            SizedBox(height: 16,),
            VoiceMessageViewEX(
              controller: VoiceControllerEx(
                audioSrc:
                'https://dl.solahangs.com/Music/1403/02/H/128/Hiphopologist%20-%20Shakkak%20%28128%29.mp3',
                maxDuration: const Duration(seconds: 10),
                isFile: false,
                onComplete: () {
                  /// do something on complete
                },
                onPause: () {
                  /// do something on pause
                },
                onPlaying: () {
                  /// do something on playing
                },
                onError: (err) {
                  /// do something on error
                },
              ),
              innerPadding: 12,
              cornerRadius: 20,
            ),






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

