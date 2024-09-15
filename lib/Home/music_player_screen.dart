import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
//import 'audio_controller.dart';
import 'controler/audio_controler.dart'; // Import the AudioController

class MusicPlayerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AudioController audioController = Get.put(AudioController());

    return Scaffold(
      body: Obx(
        () => Stack(
          children: [
            // Background Image
            SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: Image.asset(
                'assets/sleep/popUpImg.webp', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
            // Rest of the UI
            SafeArea(
              child: Column(
                children: [
                  // Top bar
                  Padding(
                    padding:  EdgeInsets.symmetric(horizontal: 24.h, vertical: 24.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Icon(
                                Icons.arrow_back,
                                color: Colors.white,
                               size: 32.sp,
                              ),
                            ),
                            SizedBox(width: 33.w,),
                            Text('Music', style: TextStyle(color: Colors.white, fontSize: 16.sp)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.playlist_play, color: Colors.white),
                            SizedBox(width: 13),
                            Icon(Icons.favorite_border, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Album Art
                  SizedBox(height: 77.h,),
                  Container(
                    margin: EdgeInsets.only(left: 55.h, right: 56.h),
                    height: 360.h,
                    width: 307.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black26,
                          blurRadius: 20,
                          offset: Offset(0, 10),
                        )
                      ],
                      image: DecorationImage(
                        image: AssetImage('assets/sleep/ic_sunset.webp'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Song Title

                  SizedBox(height: 73.h),
                  Text(
                    'Kings Of Leon - Pyro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 40.h),
                  // Slider and time indicators
                  Padding(
                    padding:  EdgeInsets.only(left: 40.w, right: 38.w),
                    child: Column(
                      children: [
                          Slider(
                            value: audioController.position.value.inSeconds.toDouble(),
                            min: 0,
                            max: audioController.duration.value.inSeconds.toDouble(),
                            onChanged: (value) {
                              audioController.seekAudio(Duration(seconds: value.toInt()));
                            },
                            activeColor: Colors.white,
                            inactiveColor: Colors.white30,
                          ),

                        Padding(
                          padding:  EdgeInsets.only(left: 20.w, right: 22.w),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Obx(() => Text(
                                _formatDuration(audioController.position.value),
                                style: TextStyle(color: Colors.white),
                              )),
                              Obx(() => Text(
                                _formatDuration(audioController.duration.value),
                                style: TextStyle(color: Colors.white),
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 35.h),
                  // Control buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.timer, color: Colors.white),
                        iconSize: 30.sp,
                      ),
                      SizedBox(width:  17.w,),
                      IconButton(
                        onPressed: () {
                          audioController.stopAudio();
                        },
                        icon: Icon(Icons.skip_previous, color: Colors.white),
                        iconSize: 40.sp,
                      ),
                       SizedBox(width:  9.33.w,),
                       CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.white,
                          child: IconButton(
                            onPressed: () {
                              if (audioController.isPlaying.value) {
                                audioController.pauseAudio();
                              } else {
                                audioController.playAudio();
                              }
                            },
                            icon: Icon(
                              audioController.isPlaying.value ? Icons.pause : Icons.play_arrow,
                              color: Colors.purple.shade800,
                            ),
                            iconSize: 40.sp,
                          ),

                      ),
                      SizedBox(width: 9.33.w,),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.skip_next, color: Colors.white),
                        iconSize: 40.sp,
                      ),
                      SizedBox(width: 17.w,),
                      IconButton(
                        onPressed: () {
                          // Toggle mute/unmute
                          if (audioController.volume.value > 0) {
                            audioController.setVolume(0.0); // Mute
                          } else {
                            audioController.setVolume(1.0); // Unmute
                          }
                        },
                        icon:  Icon(
                          audioController.volume.value > 0
                              ? Icons.volume_up
                              : Icons.volume_off,
                          color: Colors.white,
                        ),
                        iconSize: 30.sp,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(Duration duration) {
    final minutes = duration.inMinutes;
    final seconds = duration.inSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
}
