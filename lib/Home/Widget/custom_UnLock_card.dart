import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

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
                height: Get.width * .3,
                width: Get.width * .437,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20), // Adjust this value as needed
                  child: Image.asset(
                    image,
                    fit: BoxFit.fill,
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
          SizedBox(height: 10,),

          Text(title,style: TextStyle(color: Colors.white,fontSize: 14),),
          Row(
            children: [
              Text(subtitle,style: TextStyle(color:Color(0xFF848BBD) ,fontSize: 10),),
              SizedBox(width: 8,),
              SvgPicture.asset(
                "assets/sleep/Ellipse.svg",
                height: 8,
                width: 8,
              ),
              SizedBox(width: 8,),
              Text("Story",style: TextStyle(color:Color(0xFF848BBD),fontSize: 10),),

            ],
          ),

          SizedBox(height: 10),
        ],

      ),

    );
  }
}
