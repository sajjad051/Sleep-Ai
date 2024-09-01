import 'package:ai_sleep/Auth/Controler/verification_controler.dart';
import 'package:ai_sleep/core/usecase/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../Route/Routes.dart';
import '../../core/usecase/text_style.dart';
import '../../widget/custom_button.dart';

class VerificationCode extends StatelessWidget {
   VerificationCode({super.key});

  VerificationController controller = Get.put(VerificationController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
       children: [
         Container(
             color: Color(0xFF020825),
             height: height,
             width: width,
             child: Padding(
               padding: const EdgeInsets.all(20),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.start,
                 children: [
                   SizedBox(height: 150),
                   Text(
                     'Verification Code ',
                     style: welcomeTextLarge(),
                   ),
                   SizedBox(
                     height: 15,
                   ),
                   Text(
                     'Enter Verification Code To Continue ',
                     style: welcomeTextSmall(),
                   ),
                   SizedBox(
                     height: 30,
                   ),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Container(
                         width: 55,
                         height: 55,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(color: Color(0xFF848BBD)),
                           color: AppColor.editTextBackground,
                         ),
                         child: Center(
                           child: TextField(
                             style: TextStyle(color: AppColor.editTextColor),
                             controller: controller.first,
                             textAlign: TextAlign.center,
                             keyboardType: TextInputType.number,
                             inputFormatters: [
                               LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                             ],
                             decoration: InputDecoration(
                               border: InputBorder.none,
                             ),
                           ),
                         ),
                       ),

                       Container(
                         width: 55,
                         height: 55,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(color: Color(0xFF848BBD)),
                           color: AppColor.editTextBackground,
                         ),
                         child: Center(
                           child: TextField(
                             style: TextStyle(color: AppColor.editTextColor),
                             controller: controller.second,
                             textAlign: TextAlign.center,
                             keyboardType: TextInputType.number,
                             inputFormatters: [
                               LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                             ],
                             decoration: InputDecoration(
                               border: InputBorder.none,
                             ),
                           ),
                         ),
                       ),

                       Container(
                         width: 55,
                         height: 55,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(color: Color(0xFF848BBD)),
                           color: AppColor.editTextBackground,
                         ),
                         child: Center(
                           child: TextField(
                             style: TextStyle(color: AppColor.editTextColor),
                             controller: controller.third,
                             textAlign: TextAlign.center,
                             keyboardType: TextInputType.number,
                             inputFormatters: [
                               LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                             ],
                             decoration: InputDecoration(
                               border: InputBorder.none,
                             ),
                           ),
                         ),
                       ),

                       Container(
                         width: 55,
                         height: 55,
                         decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(color: Color(0xFF848BBD)),
                           color: AppColor.editTextBackground,
                         ),
                         child: Center(
                           child: TextField(
                             style: TextStyle(color: AppColor.editTextColor),
                             controller: controller.fourth,
                             textAlign: TextAlign.center,
                             keyboardType: TextInputType.number,
                             inputFormatters: [
                               LengthLimitingTextInputFormatter(1), // Limits to 4 characters
                             ],
                             decoration: InputDecoration(
                               border: InputBorder.none,
                             ),
                           ),
                         ),
                       ),

                     ],
                   ),
                   SizedBox(height: 20),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.start,
                     children: [
                       Text("Don'\t Received any OTPt?",
                           style: welcomeTextSmall()),
                       SizedBox(
                         width: 8,
                       ),
                       InkWell(
                         onTap: () {
                           Get.toNamed(Routes.signUp);
                         },
                         child: const Text(
                           'Resend OTP',
                           style: TextStyle(
                               color: Color(0xFF7D50FF),
                               fontSize: 14,
                               fontWeight: FontWeight.bold,
                               decorationColor: Colors.purple),
                         ),
                       ),
                     ],
                   ),

                   SizedBox(
                     height: 30,
                   ),
                   CustomButton(
                       height: 50,
                       width: width,
                       text: "Continue",
                       background: Color(0xFF7D50FF),
                       shadowColor: Color(0xFF7D50FF),
                       onPressed: () {
                         controller.verification();
                         Get.toNamed(Routes.resetPassword);
                       })
                 ],
               ),
             )),
         Positioned(
           top: 40,
           left: 10,
           child: IconButton(
             icon: Icon(Icons.arrow_back, color: Colors.white),
             onPressed: () {
               Get.back(); // Navigate back when pressed
             },
           ),
         ),
       ],

      ),
    );
  }
}
