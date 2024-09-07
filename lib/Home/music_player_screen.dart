// import 'package:flutter/material.dart';
//
// class MusicPlayerScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Background Image
//           SizedBox(
//             height: double.infinity,
//             width: double.infinity,
//             child: Image.asset(
//               'assets/sleep/popUpImg.png', // Replace with your image path
//               fit: BoxFit.cover,
//             ),
//           ),
//           // Rest of the UI
//           SafeArea(
//             child: Column(
//               children: [
//                 // Top bar
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Row(
//                         children: [
//                           InkWell(
//                             onTap: () {
//                               // Add your onTap action here
//                               Navigator.pop(context);
//                             },
//                             child: Icon(
//                               Icons.arrow_back,
//                               color: Colors.white,
//                             ),
//                           ),
//                           SizedBox(width: 20,),
//                           Text('Music', style: TextStyle(color: Colors.white, fontSize: 18)),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           Icon(Icons.playlist_play, color: Colors.white),
//                           SizedBox(width: 10),
//                           Icon(Icons.favorite_border, color: Colors.white),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 // Album Art
//                 Container(
//                   margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
//                   height: 350,
//                   width: 320,
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(30),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black26,
//                         blurRadius: 20,
//                         offset: Offset(0, 10),
//                       )
//                     ],
//                     image: DecorationImage(
//                       image: AssetImage('assets/sleep/sunset.jpg'), // Replace with your image path
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                 ),
//                 // Song Title
//                 Text(
//                   'Kings Of Leon - Pyro',
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: 22,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // Slider and time indicators
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 19.0),
//                   child: Column(
//                     children: [
//                       Slider(
//                         value: 3.54,
//                         min: 0,
//                         max: 5.00,
//                         onChanged: (value) {},
//                         activeColor: Colors.white,
//                         inactiveColor: Colors.white30,
//
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.symmetric(horizontal: 25),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Text('00:03:54', style: TextStyle(color: Colors.white)),
//                             Text('00:05:00', style: TextStyle(color: Colors.white)),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 // Control buttons
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.timer, color: Colors.white),
//                       iconSize: 30,
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.skip_previous, color: Colors.white),
//                       iconSize: 40,
//                     ),
//                     CircleAvatar(
//                       radius: 30,
//                       backgroundColor: Colors.white,
//                       child: IconButton(
//                         onPressed: () {},
//                         icon: Icon(Icons.play_arrow, color: Colors.purple.shade800),
//                         iconSize: 40,
//                       ),
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.skip_next, color: Colors.white),
//                       iconSize: 40,
//                     ),
//                     IconButton(
//                       onPressed: () {},
//                       icon: Icon(Icons.volume_up, color: Colors.white),
//                       iconSize: 30,
//                     ),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
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
                'assets/sleep/popUpImg.png', // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
            // Rest of the UI
            SafeArea(
              child: Column(
                children: [
                  // Top bar
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20),
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
                              ),
                            ),
                            SizedBox(width: 20,),
                            Text('Music', style: TextStyle(color: Colors.white, fontSize: 18)),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.playlist_play, color: Colors.white),
                            SizedBox(width: 10),
                            Icon(Icons.favorite_border, color: Colors.white),
                          ],
                        ),
                      ],
                    ),
                  ),
                  // Album Art
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                    height: 350,
                    width: 320,
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
                        image: AssetImage('assets/sleep/sunset.jpg'), // Replace with your image path
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  // Song Title
                  Text(
                    'Kings Of Leon - Pyro',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20),
                  // Slider and time indicators
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 19.0),
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
                          padding: const EdgeInsets.symmetric(horizontal: 25),
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
                  SizedBox(height: 20),
                  // Control buttons
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.timer, color: Colors.white),
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          audioController.stopAudio();
                        },
                        icon: Icon(Icons.skip_previous, color: Colors.white),
                        iconSize: 40,
                      ),
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
                            iconSize: 40,
                          ),

                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.skip_next, color: Colors.white),
                        iconSize: 40,
                      ),
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
                        iconSize: 30,
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
