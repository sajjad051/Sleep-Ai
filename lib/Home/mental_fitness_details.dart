import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'Widget/customMusicCard.dart';
class MentalFitnessDetails extends StatelessWidget {
  const MentalFitnessDetails({super.key});

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
      appBar: AppBar(
        title: Text("Mental Fitness", style: GoogleFonts.inter(fontSize: 16.sp, fontWeight:FontWeight.w700, color: Color(0xFFFFFFFF).withOpacity(.8)),),
        leading: InkWell(onTap: () {
          Navigator.pop(context);
        },child: Icon(Icons.arrow_back, color: Colors.white)),
        backgroundColor: Colors.transparent,
      ),
      body: Padding(
        padding:  EdgeInsets.only(left: 24.w,),
        child: Column(
          children: [
            Expanded(
              child: GridView.builder(
                itemCount: gridItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 3,
                    mainAxisSpacing: 3,
                    childAspectRatio: 5 / 6.4),
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
