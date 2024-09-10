import 'package:ai_sleep/Home/Widget/customHomeCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
        padding:  EdgeInsets.only(left: 24.w,top: 12.h,),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: gridItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 5 / 6.4),
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
