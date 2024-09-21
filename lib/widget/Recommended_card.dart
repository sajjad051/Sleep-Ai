import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../Route/Routes.dart';
import '../../widget/custom_button.dart';
import '../../widget/rounded_button.dart';

class Recommendedcard extends StatelessWidget {

  final String image;
  final title;
  final subtitle;
  // final VoidCallback onPressed;

  const Recommendedcard({super.key ,required this.title, required this.subtitle, required this.image});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => Dialog(
          backgroundColor: Color(0xFF061239),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.close,
                      color: Colors.white.withOpacity(0.5),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Container(
                  // margin: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  height: Get.width * .45,
                  width: Get.width * .45,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 20,
                        offset: Offset(0, 10),
                      )
                    ],
                    image: DecorationImage(
                      image: AssetImage('assets/sleep/pop.jpg'), // Replace with your image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text(
                  "Unlock Music",
                  style: TextStyle(
                      fontSize: 28,
                      color: Color(0xFFFFFFFF),
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 15,),
                Text(
                  "Unlock Music by Watching Video",
                  style: TextStyle(fontSize: 19, color: Color(0xFF848BBD)),
                ),
                SizedBox(
                  height: 70,
                ),
                RoundedButton(
                    height: 48,
                    width: Get.width,
                    text: "Watch Video",
                    background: Color(0xFF061239),
                    shadowColor: Color(0xFF7D50FF),
                    borderColor: Color(0xFF7D50FF),
                    onPressed: () {
                      Get.toNamed(Routes.albam);
                    }),
                SizedBox(
                  height: 20,
                ),
                CustomButton(
                    height: 48,
                    width: Get.width,
                    text: "Unlock All",
                    background: Color(0xFF7D50FF),
                    shadowColor: Color(0xFF7D50FF),
                    onPressed: () {}),
              ],
            ),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 177.h,
                width: 356.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.47), // Adjust this value as needed
                   child: Image(
                     image: CachedNetworkImageProvider(
                       'https://images.pexels.com/photos/1172064/pexels-photo-1172064.jpeg',
                     ),
                     fit: BoxFit.cover,
                   ),
                ),
              ),

              Positioned(
                top: 9.h,
                right: 9.w,
                child: InkWell(
                  onTap: () {

                  },
                  child:  Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: Color(0xFF000000).withOpacity(.2), // Background color with opacity
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Icon(
                      Icons.favorite_border,
                      color: Color(0xFFFFFFFF),
                      size: 13.5,// Icon color
                    ),
                  ),

                ),
              ),

              Positioned(
                bottom: 18.sp,
                right: 9.sp,
                child: InkWell(
                  onTap: () {

                  },
                  child:  Container(
                    height: 24.h,
                    width: 24.w,
                    decoration: BoxDecoration(
                      color: Color(0xFF000000).withOpacity(.2), // Background color with opacity
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    child: Icon(
                      CupertinoIcons.lock_fill,
                      color: Color(0xFFFFFFFF),
                      size: 13.5,// Icon color
                    ),
                  ),
                ),
              ),

              Positioned(
                bottom: 12,
                left: 8,
                child: Container(
                  height: 16.h,
                  width: 38.w,
                  decoration: BoxDecoration(
                      color: Color(0xFF000000).withOpacity(.2),
                      borderRadius: BorderRadius.circular(3.r)),
                  child: Text(
                    "05:00",
                    style: GoogleFonts.inter(
                      color: Color(0xFFFFFFFF),
                      fontSize: 12.sp,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 9.h,),
          Text(title,style: GoogleFonts.inter(color: Colors.white,fontSize: 14.sp),),
          SizedBox(height: 5.h),
          Row(
            children: [
              Text(subtitle,style: GoogleFonts.inter(color:Color(0xFF848BBD) ,fontSize: 10.sp),),
              SizedBox(width: 6.w,),
              SvgPicture.asset(
                "assets/sleep/Ellipse.svg",
                height: 4.h,
                width: 4.h,
              ),
              SizedBox(width: 4.w,),
              Text("Story",style: GoogleFonts.inter(color:Color(0xFF848BBD),fontSize: 10.sp),),

            ],
          ),

        ],

      ),

    );
  }
}
