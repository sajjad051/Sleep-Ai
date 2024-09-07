import 'package:ai_sleep/Home/Widget/customHomeCard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Route/Routes.dart';
import '../widget/custom_button.dart';
import '../widget/rounded_button.dart';
import 'ScrollBtn.dart';
import 'Widget/customMusicCard.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> buttonLabels = [
      "Button1",
      "Button2",
      "Button3",
      "Button4",
      "Button5",
      "Button6",
      "Button7",
    ];

    final List<Map<String, String>> gridItems = [
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/demo_ic.webp",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/demo_ic.webp",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/demo_ic.webp",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/demo_ic.webp",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/demo_ic.webp",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/demo_ic.webp",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/demo_ic.webp",
      },

      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/demo_ic.webp",
      },
      // Add more items as needed
    ];

    return Scaffold(
      backgroundColor: Color(0xFF020825),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, top: 35, right: 20),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset(
                      "assets/sleep/Vector.webp",
                      color: Colors.white,
                    ),
                    SizedBox(width: 25),
                    Text(
                      "Music",
                      style: TextStyle(
                        color: Color(0xFFFFFFFF),
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
        Container(
          height: 50, // Set a fixed height for the buttons
          padding: EdgeInsets.symmetric(vertical: 10),
          color: Color(0xFF020825),
          child: ListView.builder(
            scrollDirection: Axis.horizontal, // Set scroll direction to horizontal
            itemCount: buttonLabels.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: ElevatedButton(

                  onPressed: () {
                    // Handle button press
                  },
                    //  style: ElevatedButton.styleFrom(
                    // backgroundColor: Color(0xFF020825),
                  child: Text(buttonLabels[index],style: TextStyle(fontSize: 14, color: Color(0xFF848BBD)),),
                ),
              );
            },
          ),
        ),
            SizedBox(height: 5),
            Expanded(
              child: GridView.builder(
                itemCount: gridItems.length,
                gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 5/6
                ),
                padding: EdgeInsets.only(top: 5),
                itemBuilder: (context, index) {
                  final item = gridItems[index];
                  return CustomMusiccard(
                    title: item['title']!,
                    subtitle: item['subtitle']!,
                    image: item['image']!,

                  );
                },
              ),
            ),

          ],
        ),
      ),
    );
  }
}
