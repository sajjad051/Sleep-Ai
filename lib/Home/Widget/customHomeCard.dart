import 'package:ai_sleep/Auth/Controler/forgot_controler.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';
import '../../widget/custom_button.dart';
import '../../widget/rounded_button.dart';

class Customhomecard extends StatelessWidget {

  final String image;
  final title;
  final subtitle;
 // final VoidCallback onPressed;

  const Customhomecard({super.key ,required this.title, required this.subtitle, required this.image});


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
                height: Get.width * .38,
                width: Get.width * .38,
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
                bottom: 13,
                right: 13,
                child: InkWell(
                  onTap: () {

                  },
                  child:  SvgPicture.asset(
                    "assets/sleep/lock.svg",
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
          SizedBox(height: 5,),
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

        ],

      ),

    );
  }
}
