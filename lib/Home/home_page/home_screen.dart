import 'package:ai_sleep/Home/Widget/custom_bottom_buttom.dart';
import 'package:ai_sleep/Home/home_page/home_slider.dart';
import 'package:ai_sleep/widget/Recommended_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../Widget/customHomeCard.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> gridItems = [
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/ic_home.webp",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/demo_ic.webp",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/ic_home.webp",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/ic_home.webp",
      },
      {
        'title': "Ghosts and Empties",
        'subtitle': "By Lauren Groff",
        'image': "assets/sleep/demo_ic.webp",
      },
      // Add more items as needed
    ];

    return Scaffold(
      backgroundColor: Colors.transparent,
      bottomNavigationBar: CustomBottomButtom(),
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
                    top: 160.h, left: 24.w,),
                child: Column(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(right: 24.w),
                      child: HomeSlider(),
                    ),
                    SizedBox(height: 19.h,),


                    Padding(
                      padding: const EdgeInsets.only(right: 24),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Bedtime Stories",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    SizedBox(
                      height: 250.h,
                      // Adjust the height as needed
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: gridItems.length,
                       // padding: EdgeInsets.only(right:  16.w),
                        itemBuilder: (context, index) {
                          final item = gridItems[index];
                          return SizedBox(
                            //margin: EdgeInsets.symmetric(horizontal: 3),
                            width: 176.w, // Adjust the width of each item if needed
                            child: Padding(
                              padding:  EdgeInsets.only(right: 16.w),
                              child: Customhomecard(
                                title: item['title']!,
                                subtitle: item['subtitle']!,
                                image: item['image']!,
                              ),
                            ),
                          );
                        },
                      ),
                    ),


                    Padding(
                      padding:  EdgeInsets.only(right: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Freatred",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 12.h),
                    Container(
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
                            width: 176.w, // Adjust the width of each item if needed
                            child: Padding(
                              padding:  EdgeInsets.only(right: 16.w),
                              child: Customhomecard(
                                title: item['title']!,
                                subtitle: item['subtitle']!,
                                image: item['image']!,
                              ),
                            ),
                          );
                        },
                      ),
                    ),


                    Padding(
                      padding:  EdgeInsets.only(right: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Recommended",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
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
                            width: 356.w, // Adjust the width of each item if needed
                            child: Padding(
                              padding:  EdgeInsets.only(right: 16.w),
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

                    Padding(
                      padding:  EdgeInsets.only(right: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mental Fitness",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
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
                            width: 356.w, // Adjust the width of each item if needed
                            child: Padding(
                              padding:  EdgeInsets.only(right: 16.w),
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


                    Padding(
                      padding:  EdgeInsets.only(right: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mental Fitness",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
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
                            width: 176.w, // Adjust the width of each item if needed
                            child: Padding(
                              padding:  EdgeInsets.only(right: 16.w),
                              child: Customhomecard(
                                title: item['title']!,
                                subtitle: item['subtitle']!,
                                image: item['image']!,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    Padding(
                      padding:  EdgeInsets.only(right: 24.w),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Mental Fitness",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                          Text(
                            "See All",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                              color: Color(0xFFFFFFFF).withOpacity(.8),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10.h),
                    Container(
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
                            width: 176.w, // Adjust the width of each item if needed
                            child: Padding(
                              padding:  EdgeInsets.only(right: 16.w),
                              child: Customhomecard(
                                title: item['title']!,
                                subtitle: item['subtitle']!,
                                image: item['image']!,
                              ),
                            ),
                          );
                        },
                      ),
                    ),

                    SizedBox(height: 15.h),

                  ],
                ),
              ),

          ),


        ],
      ),
    );
  }
}
