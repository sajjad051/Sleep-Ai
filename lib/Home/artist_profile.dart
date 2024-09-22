import 'package:ai_sleep/Home/Widget/custom_UnLock_card.dart';
import 'package:ai_sleep/Home/artist_play_card.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

//import '../widget/customHomeCard.dart';
import '../Route/Routes.dart';
import 'Widget/customHomeCard.dart';

class ArtistProfile extends StatelessWidget {
  const ArtistProfile({super.key});

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
      // Add more items as needed
    ];

    return Stack(
      children: [
        SizedBox(
          height: 428.h,
          width: Get.width,
          child: Image(
            image: CachedNetworkImageProvider(
              'https://upload.wikimedia.org/wikipedia/commons/3/36/Nagar_Baul_James.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: Text(
              "Lauren Groff",
              style: GoogleFonts.inter(
                fontSize: 16.sp,
                fontWeight: FontWeight.w700,
                color: Color(0xFFFFFFFF).withOpacity(.8),
              ),
            ),
            leading: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.white),
            ),
            backgroundColor: Colors.transparent,
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 206.h,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF020825),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30).w,
                      topRight: Radius.circular(30).w,
                    ),
                  ),
                  padding: EdgeInsets.only(left: 24.w, right: 24.w, top: 29.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.artistProfileDetails);
                        },
                        child: Text(
                          'Lauren Groff',
                          style: GoogleFonts.inter(
                              color: Color(0xFFFFFFFF).withOpacity(.9),
                              fontSize: 22.sp, fontWeight: FontWeight.w500),
                        ),
                      ),
                      SizedBox(
                        height: 10.h,
                      ),
                      Text(
                        'Musician',
                        style: TextStyle(
                            color: Color(0xFF848BBD), fontSize: 14.sp),
                      ),
                      SizedBox(height: 20.h),
                      Padding(
                        padding: EdgeInsets.only(right: 10.0.w),
                        child: Text(
                          'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique amet pharetra sem varius dolor vel egestas risus, duis. Volutpat massa mauris luctus enim cras',
                          style: GoogleFonts.inter(
                              color: Color(0xFFA2A5B1), fontSize: 14.sp),
                        ),
                      ),
                      SizedBox(height: 24.h),
                      Expanded(
                        child: GridView.builder(
                          itemCount: gridItems.length,
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2,
                                  crossAxisSpacing: 16,
                                  mainAxisSpacing: 12,
                                  childAspectRatio: 2/2.8),
                          // padding: EdgeInsets.only(top: 10, bottom: 20),
                          itemBuilder: (context, index) {
                            final item = gridItems[index];
                            return ArtistPlayCard(
                              title: item['title']!,
                              subtitle: item['subtitle']!,
                              image: item['image']!,
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
