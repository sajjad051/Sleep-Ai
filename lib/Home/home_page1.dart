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
        'image': "https://img.freepik.com/free-photo/cloud-forest-landscape_23-2151794637.jpg?size=626&ext=jpg&ga=GA1.1.184910439.1726138853&semt=ais_hybrid",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "https://img.freepik.com/free-photo/butterfly-blossom_23-2150636183.jpg?size=626&ext=jpg&ga=GA1.1.184910439.1726138853&semt=ais_hybrid",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPM5FcRsv-a_yExYYTntz0gFrpSrzgTe240w&s",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "https://img.freepik.com/premium-photo/scenic-view-seagulls-flying-beach-against-sky-during-sunset_948265-397301.jpg?size=626&ext=jpg&ga=GA1.1.184910439.1726138853&semt=ais_hybrid",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPM5FcRsv-a_yExYYTntz0gFrpSrzgTe240w&s",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "https://img.freepik.com/premium-photo/scenic-view-seagulls-flying-beach-against-sky-during-sunset_948265-397301.jpg?size=626&ext=jpg&ga=GA1.1.184910439.1726138853&semt=ais_hybrid",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPM5FcRsv-a_yExYYTntz0gFrpSrzgTe240w&s",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "https://img.freepik.com/premium-photo/scenic-view-seagulls-flying-beach-against-sky-during-sunset_948265-397301.jpg?size=626&ext=jpg&ga=GA1.1.184910439.1726138853&semt=ais_hybrid",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPM5FcRsv-a_yExYYTntz0gFrpSrzgTe240w&s",
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
                    crossAxisSpacing: 5,
                    mainAxisSpacing: 5,
                    childAspectRatio: 5 / 5.9),
                padding: EdgeInsets.only(top: 20.h),
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
