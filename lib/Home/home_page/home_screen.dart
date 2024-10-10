import 'dart:io';

import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:ai_sleep/Home/home_page/home_slider.dart';
import 'package:ai_sleep/widget/Recommended_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../Route/Routes.dart';
import '../../carousel_widget.dart';
import '../Widget/customHomeCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});



  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> gridItems = [
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image':
            "https://img.freepik.com/free-photo/cloud-forest-landscape_23-2151794637.jpg?size=626&ext=jpg&ga=GA1.1.184910439.1726138853&semt=ais_hybrid",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image':
            "https://img.freepik.com/free-photo/butterfly-blossom_23-2150636183.jpg?size=626&ext=jpg&ga=GA1.1.184910439.1726138853&semt=ais_hybrid",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPM5FcRsv-a_yExYYTntz0gFrpSrzgTe240w&s",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image':
            "https://img.freepik.com/premium-photo/scenic-view-seagulls-flying-beach-against-sky-during-sunset_948265-397301.jpg?size=626&ext=jpg&ga=GA1.1.184910439.1726138853&semt=ais_hybrid",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image':
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQPM5FcRsv-a_yExYYTntz0gFrpSrzgTe240w&s",
      },
      // Add more items as needed
    ];

    return PopScope(
      canPop: false,
      onPopInvoked: (_) async {
        (await Get.dialog(
              AlertDialog(
                title: Text('Exit App',style: GoogleFonts.inter(),),
                content: Text('Are you sure you want to exit the app?',style: GoogleFonts.inter()),
                actions: [
                  TextButton(
                    onPressed: () =>
                        Get.back(result: false), // Dismisses the dialog
                    child: Text('No'),
                  ),
                  TextButton(
                    //onPressed: () => Get.back(result: true), // Confirms exit
                    onPressed: () => exit(0),
                    child: Text('Yes'),
                  ),
                ],
              ),
            )) ??
            false;
      },
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // bottomNavigationBar: CustomBottomButtom(),
        body: Stack(
          children: [
            SizedBox(
              height: Get.height,
              width: Get.width,
              child: Image.asset(
                "assets/sleep/ic_home_bg.webp",
                fit: BoxFit.cover, // Ensures the image covers the width
              ),
            ),
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.only(
                  top: 160.h,
                ),
                child: Column(
                  children: [
                    // InkWell(
                    // onTap: (){
                    //   Get.toNamed(Routes.breathEx);
                    // },child: HomeSlider()),
                    ///carousal Slider
                    CarouselWidget(),
                    SizedBox(
                      height: 19.h,
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 24.w,left: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Bedtime Stories",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.bedTimeDtl);
                            },
                            child: Text(
                              "See All",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Color(0xFFFFFFFF).withOpacity(.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Padding(
                      padding: EdgeInsets.only(right: 24.w,left: 24.w),
                      child: SizedBox(
                        height: 227.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: gridItems.length,
                          padding: EdgeInsets.zero,
                          // padding: EdgeInsets.only(right:  16.w),
                          itemBuilder: (context, index) {
                            final item = gridItems[index];
                            return Padding(
                              padding: EdgeInsets.only(right: 16.w),
                              child: Customhomecard(
                                title: item['title']!,
                                subtitle: item['subtitle']!,
                                image: item['image']!,
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 24.w, top: 24.h, left: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Freatred",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8.r),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              Get.toNamed(Routes.featuredDtl);
                            },
                            child: Text(
                              "See All",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Color(0xFFFFFFFF).withOpacity(.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Padding(
                      padding: EdgeInsets.only(right: 24.w,left: 24.w),
                      child: SizedBox(
                        height: 227.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: gridItems.length,
                          padding: EdgeInsets.zero,
                          // padding: EdgeInsets.only(right:  16.w),
                          itemBuilder: (context, index) {
                            final item = gridItems[index];
                            return Padding(
                              padding: EdgeInsets.only(right: 16.w),
                              child: Customhomecard(
                                title: item['title']!,
                                subtitle: item['subtitle']!,
                                image: item['image']!,
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 24.w, top: 24.h, left: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recommended",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Get.toNamed(Routes.recommendedDtl);
                            },
                            child: Text(
                              "See All",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Color(0xFFFFFFFF).withOpacity(.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Padding(
                      padding: EdgeInsets.only(right: 24.w,left: 24.w),
                      child: Container(
                        height: 250.h,
                        // Adjust the height as needed
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: gridItems.length,
                          // padding: EdgeInsets.only(right:  16.w),
                          itemBuilder: (context, index) {
                            final item = gridItems[index];
                            return Container(
                              //margin: EdgeInsets.symmetric(horizontal: 3),
                              width: 356
                                  .w, // Adjust the width of each item if needed
                              child: Padding(
                                padding: EdgeInsets.only(right: 16.w),
                                child: Recommendedcard(
                                  title: item['title']!,
                                  subtitle: item['subtitle']!,
                                  image: item['image']!,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 24.w, left: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mental Fitness",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Get.toNamed(Routes.mentalFitnessDtl);
                            },
                            child: Text(
                              "See All",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Color(0xFFFFFFFF).withOpacity(.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(right: 24.w,left: 24.w),
                      child: Container(
                        height: 250.h,
                        // Adjust the height as needed
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: gridItems.length,
                          // padding: EdgeInsets.only(right:  16.w),
                          itemBuilder: (context, index) {
                            final item = gridItems[index];
                            return Container(
                              //margin: EdgeInsets.symmetric(horizontal: 3),
                              width: 356
                                  .w, // Adjust the width of each item if needed
                              child: Padding(
                                padding: EdgeInsets.only(right: 16.w),
                                child: Recommendedcard(
                                  title: item['title']!,
                                  subtitle: item['subtitle']!,
                                  image: item['image']!,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 24.w, top: 8.h,left: 24.h),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Music",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                              Get.toNamed(Routes.musicDtl);
                            },
                            child: Text(
                              "See All",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Color(0xFFFFFFFF).withOpacity(.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(right: 24.w,left: 24.w),
                      child: SizedBox(
                        height: 227.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: gridItems.length,
                          padding: EdgeInsets.zero,
                          // padding: EdgeInsets.only(right:  16.w),
                          itemBuilder: (context, index) {
                            final item = gridItems[index];
                            return Padding(
                              padding: EdgeInsets.only(right: 16.w),
                              child: Customhomecard(
                                title: item['title']!,
                                subtitle: item['subtitle']!,
                                image: item['image']!,
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    Padding(
                      padding: EdgeInsets.only(right: 24.w, top: 24.h,left: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Meditations",
                            style: GoogleFonts.inter(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                          InkWell(
                            onTap: (){
                            Get.toNamed(Routes.meditationDtl);
                          },
                            child: Text(
                              "See All",
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.bold,
                                fontSize: 14.sp,
                                color: Color(0xFFFFFFFF).withOpacity(.8),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Padding(
                      padding: EdgeInsets.only(right: 24.w,left: 24.w),
                      child: SizedBox(
                        height: 227.h,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: gridItems.length,
                          padding: EdgeInsets.zero,
                          // padding: EdgeInsets.only(right:  16.w),
                          itemBuilder: (context, index) {
                            final item = gridItems[index];
                            return Padding(
                              padding: EdgeInsets.only(right: 16.w),
                              child: Customhomecard(
                                title: item['title']!,
                                subtitle: item['subtitle']!,
                                image: item['image']!,
                              ),
                            );
                          },
                        ),
                      ),
                    ),

                    SizedBox(height: 15.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
