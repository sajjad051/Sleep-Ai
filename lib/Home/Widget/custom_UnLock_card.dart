import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

//artist profile
class CustomUnlockCard extends StatelessWidget {

  final String image;
  final title;
  final subtitle;
 // final VoidCallback onPressed;

  const CustomUnlockCard({super.key,required this.title, required this.subtitle, required this.image});


  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {

      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              SizedBox(
                height: 182.h,
                width: 182.h,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.47.w), // Adjust this value as needed
                  child: Image(
                    image: CachedNetworkImageProvider(
                      image,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              Positioned(
                top: 13,
                right: 13,
                child: InkWell(
                  onTap: () {

                  },
                  child:  SvgPicture.asset(
                    "assets/sleep/Heart.svg",
                    height: 20,
                    width: 20,
                  ),
                ),
              ),



              Positioned(
                bottom: 10,
                left: 8,
                child: Text(
                  "05:00",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 9.h,),

          Text(title,style: GoogleFonts.inter(color: Colors.white,fontSize: 14.sp, fontWeight: FontWeight.w500),),
          SizedBox(height: 6.h,),
          Row(
            children: [
              Text(subtitle,style: GoogleFonts.inter(color:Color(0xFF848BBD) ,fontSize: 10.sp),),
              SizedBox(width: 6.w,),
              SvgPicture.asset(
                "assets/sleep/Ellipse.svg",
                height: 4.h,
                width: 4.w,
              ),
              SizedBox(width: 6.w,),
              Text("Story",style: GoogleFonts.inter(color:Color(0xFF848BBD),fontSize: 10.sp, fontWeight: FontWeight.w400),),

            ],
          ),

          //SizedBox(height: 10),
        ],

      ),

    );
  }
}
