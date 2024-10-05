import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Route/Routes.dart';
import '../widget/custom_button.dart';

class AlbumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.purple.shade800,
      body: Stack(
        children: [
          SizedBox(
            height: Get.width,
            width: Get.width,
            child: Image.asset(
              'assets/sleep/ic_sunset.webp', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top section with back button and artist name
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20.0.h, vertical: 30.0.w),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Get.back();
                          Get.back();
                        },
                        child: Icon(Icons.arrow_back, color: Colors.white)),
                    SizedBox(width: 33.w,),
                    Text(
                      'Lauren Groff',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    Spacer(),
                    Icon(Icons.favorite_border, color: Colors.white),
                  ],
                ),
              ),
              // Album Image
              // Container(
              //   // margin: EdgeInsets.all(20),
              //   height: 200,
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(20),
              //     image: DecorationImage(
              //       image: AssetImage('assets/sleep/sunset.jpg'),
              //       fit: BoxFit.cover,
              //     ),
              //   ),
              // ),
              // Album details section

              SizedBox(
                height: Get.height * 0.25,
              ),
              Expanded(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xFF020825),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Ghosts and Empties - Vol 1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 21.h,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.artistProfile);
                        },
                        child: Row(
                          children: [
                            Container(
                              // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                              height: 43.h,
                              width: 43.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: const [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 20,
                                    offset: Offset(0, 10),
                                  )
                                ],
                                image: const DecorationImage(
                                  image: AssetImage(
                                      'assets/sleep/ic_sunset.webp'), // Replace with your image path
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: 17.w),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Lauren Groff',
                                    style: TextStyle(color: Colors.grey[400]),
                                  ),
                                  Text(
                                    'Musician',
                                    style: TextStyle(
                                        color: Color(0xFF848BBD),
                                        fontSize: 10.sp),
                                  ),
                                ],
                              ),
                            ),
                            Icon(Icons.arrow_forward_ios, color: Colors.white),
                          ],
                        ),
                      ),
                      SizedBox(height: 30.h),
                      // Description and play button
                      Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tristique amet pharetra sem varius dolor vel egestas risus, duis. Volutpat massa mauris luctus enim cras',
                        style: TextStyle(color: Colors.grey[400]),
                      ),
                      SizedBox(height: 21.h),
                      Center(
                        child: CustomButton(
                            height: 50.h,
                            width: Get.width,
                            text: "Play",
                            background: Color(0xFF7D50FF),
                            shadowColor: Color(0xFF7D50FF),
                            onPressed: () {
                              Get.toNamed(Routes.musicPlayer);
                            }),
                      ),
                      SizedBox(height: 5),
                      // Track list
                      Expanded(
                        child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return ListTile(
                              contentPadding: EdgeInsets.zero,
                              title: Text(
                                'Ghosts and Empties - Track ${index + 1}',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(.8),
                                    fontSize: 16),
                              ),
                              subtitle: Text(
                                '05:49',
                                style: TextStyle(
                                    color: Color(0xFFFFFFFF).withOpacity(.5),
                                    fontSize: 11.sp),
                              ),
                              trailing: Icon(Icons.favorite_border,
                                  color: Color(0xFFFFFFFF).withOpacity(.8)),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
