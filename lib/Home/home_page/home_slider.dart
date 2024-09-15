import 'package:ai_sleep/Home/home_page/slider_Indicator.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:ai_sleep/Home/home_page/slider_Indicator.dart';
import 'Controler/home_slider_controler.dart';

class HomeSlider extends StatelessWidget {
  final HomeSliderController controller = Get.put(HomeSliderController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;

    return Column(
      children: [
        Stack(
          children: [
            Column(
              children: [
                SizedBox(height: width * 0.009),
                CarouselSlider.builder(
                  options: CarouselOptions(
                    aspectRatio: 3 / 1,
                    viewportFraction: 0.95,
                    autoPlay: true,
                    enlargeCenterPage: true,
                    disableCenter: true,
                    autoPlayInterval: Duration(seconds: 3),
                    onPageChanged: (index, reason) {
                      controller.updateIndex(index);
                    },
                  ),
                  itemCount: 4, // Total number of slides
                  itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) =>
                      sliderWidget(height, width, itemIndex),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.h),
                  child: Obx(() {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                          4, // Total number of indicators
                          (indicatorIndex) => SliderIndicator(
                            isActive:
                                indicatorIndex == controller.indexNo.value,
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget sliderWidget(double height, double width, int position) {
    return Container(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Center(
                    child: Image.asset(
                      "assets/sleep/Layer 1.jpg",
                      fit: BoxFit.cover,
                      height: height * 0.4,
                      width: width ,
                    ),
                  ),
                ),
                Container(
                  margin:
                       EdgeInsets.symmetric(horizontal: 10.h, vertical: 10.h),
                  padding:
                       EdgeInsets.symmetric(horizontal: 5.h, vertical: 5.h),
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.20),
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                  ),
                  child: Text(
                    "5 min",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
          ),
           SizedBox(height: 10.h),
          Text(
            "Breath exercise for better sleep",
            style: TextStyle(
                fontSize: 16.sp, color: Colors.white, fontWeight: FontWeight.w700),
          ),
          Text(
            "Close your eyes and take a deep breathe to sleep better tonight",
            style: TextStyle(fontSize: 12.sp, color: Color(0xFF848BBD)),
          ),
        ],
      ),
    );
  }
}

// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_svg/svg.dart';
//
//
// class HomeSlider extends StatefulWidget {
//   const HomeSlider({Key? key}) : super(key: key);
//
//   @override
//   State<HomeSlider> createState() => _HomeSliderState();
// }
//
// class _HomeSliderState extends State<HomeSlider> {
//
//   int totalPage = 4;
//   // late PageController _pageController;
//   int pageIndex = 0;
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Container(
//       child: Column(
//         children: [
//
//           Stack(
//             children: [
//               SizedBox(
//                 height: width * 0.6,
//                 width: width,
//                 child: Image.asset(
//                   "assets/home/tab/home/home_bg.webp",
//                   fit: BoxFit.fill,
//                 ),
//               ),
//
//               Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//
//                 children: [
//                   Container(
//                     margin: EdgeInsets.only(top: width * 0.4),
//                     height: width * 0.35,
//                     width: width,
//                     decoration:  BoxDecoration(
//                         gradient: LinearGradient(
//                           begin: Alignment.topCenter,
//                           end: Alignment.bottomCenter,
//                           colors: [
//                             Colors.transparent,
//                             // Colors.red,
//                             Color(0xFFFA2CB25),
//                           ],
//                         )
//                     ),
//                   ),
//
//                   Container(
//                     height: width * 0.15,
//                     width: width,
//                     color: Color(0xFFFA2CB25),
//                   ),
//
//                 ],
//               ),
//
//
//
//               Column(
//                 children: [
//
//                   SizedBox(height: width * 0.5,),
//                   CarouselSlider.builder(
//                     options: CarouselOptions(
//                       aspectRatio: 16/9,
//                       viewportFraction: 0.95,
//                       autoPlay: true,
//                       enlargeCenterPage: true,
//                       disableCenter: true,
//                       autoPlayInterval: Duration(seconds: 2),
//                       onPageChanged: (index, reason) {
//                         Provider.of<HomeSliderProvider>(context, listen: false).updateIndex(index);
//                       },
//                     ),
//                     itemCount: totalPage,
//                     itemBuilder: (BuildContext context, int itemIndex, int pageViewIndex) =>
//                         sliderWidget(height, width, itemIndex),
//                   ),
//                   Container(
//
//                     margin: EdgeInsets.only(top: 20),
//                     child: Consumer<HomeSliderProvider>(builder: (context, provider, child){
//                       return Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           ...List.generate(
//                               totalPage, (indicatorIndex) => Indicator(isActive: indicatorIndex == provider.indexNo ? true : false))
//                         ],
//                       );
//                     }),
//                   ),
//                 ],
//               ),
//
//
//             ],
//           ),
//
//
//
//
//         ],
//       ),
//     );
//   }
//
//   Widget sliderWidget(double height, double width, int position){
//     return Container(
//       child: Column(
//         mainAxisSize: MainAxisSize.min,
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//
//           Expanded(
//             child: Stack(
//               children: [
//                 ClipRRect(
//                   borderRadius: BorderRadius.circular(8.0),
//                   child: SvgPicture.asset(
//                     "assets/home/tab/home/tab_slider.svg",
//                     fit: BoxFit.fill,
//                     height: height * 0.25,
//                     width: width -10,
//                   ),
//                 ),
//
//                 Container(
//                   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
//                   padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//                   decoration: BoxDecoration(
//                       color: Colors.black.withOpacity(0.20),
//                       borderRadius: const BorderRadius.all(Radius.circular(4))
//                   ),
//                   child: Text("5 min", style: TextStyle(
//                     color: Colors.white
//                   ),),
//                 )
//               ],
//             ),
//           ),
//           const SizedBox(height: 10,),
//           Text("Breath exercise for better sleep", style: titleMedium(),),
//           Text("Close your eyes and take a deep breathe to sleep better tonight",
//             style: descriptionMedium(),)
//         ],
//       ),
//     );
//   }
// }
