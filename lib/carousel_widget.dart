import 'package:ai_sleep/Route/Routes.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'carousel_controller.dart'; // Ensure this matches your controller file name

class CarouselWidget extends StatelessWidget {
  final CarouselController2 carouselController = Get.put(CarouselController2());

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 275.h,
      width: 375.w,
      child: Column(
        children: [
          CarouselSlider(
            options: CarouselOptions(
              height: 175.0.h, // Adjust the carousel height
              initialPage: 0,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayInterval: const Duration(seconds: 3),
              autoPlayAnimationDuration: const Duration(milliseconds: 800),
              viewportFraction: 1.0, // Show only the current page
              onPageChanged: (index, reason) {
                carouselController.setIndex(index); // Update index
              },
            ),
            items: List.generate(4, (index) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: 380.w,
                    height: 175.h,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(8.0.r),
                    ),
                    child: InkWell(
                      onTap: () {
                        Get.toNamed(Routes.breathEx); // Navigate on tap
                      },
                      child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0.r),
                            child: Center(
                              child: Image.asset(
                                "assets/sleep/Layer 1.jpg",
                                fit: BoxFit.cover,
                                height: 175.h,
                                width: 380.w,
                              ),
                            ),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(top:  13.h, left: 29.w),
                            child: Container(
                              height: 20.h,
                              width: 52.w,
                              decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.20),
                                borderRadius:  BorderRadius.all(
                                  Radius.circular(3).r,
                                ),
                              ),
                              child:  Center(
                                child: Text(
                                  "5 min",
                                  style: GoogleFonts.inter(color: Colors.white, fontSize: 11.sp, fontWeight: FontWeight.w400),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              );
            }),
          ),
          SizedBox(height: 8.h), // Space between carousel and text
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Breath exercise for better sleep",
                style: GoogleFonts.inter(
                  fontSize: 16.sp,
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 4.h),
              Text(
                "Close your eyes and take a deep breathe to sleep better tonight",
                style: GoogleFonts.inter(
                  fontSize: 12.sp,
                  color: const Color(0xFF848BBD),
                  fontWeight: FontWeight.w300
                ),
              ),
            ],
          ),
          SizedBox(height: 7.h,),
          Obx(() {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 18.w,
                      height: 18.h,
                      margin:  EdgeInsets.symmetric(horizontal: 4.0.w),
                      child: CircularProgressIndicator(
                        value: carouselController.currentIndex.value == index
                            ? 1
                            : 0, // Update value based on index
                        strokeWidth: 1,
                        backgroundColor: Colors.transparent,
                        valueColor: const AlwaysStoppedAnimation<Color>(
                          Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: 12.w,
                      height: 12.h,
                      decoration: BoxDecoration(
                        color: carouselController.currentIndex.value == index
                            ? Colors.deepPurpleAccent
                            : Colors.white.withOpacity(.2),
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                    ),
                  ],
                );
              }),
            );
          }),
        ],
      ),
    );
  }
}
