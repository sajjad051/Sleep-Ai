import 'package:ai_sleep/Auth/Controler/reset_controler.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../core/usecase/app_color.dart';
import '../../core/usecase/text_style.dart';
import '../../widget/custom_button.dart';

class ResetPassword extends StatelessWidget {
  ResetPassword({super.key});

  ResetController controller = Get.put(ResetController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Obx(
        () => Stack(
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
                       'Reset Password ?',
                       style: welcomeTextLarge(),
                     ),
                     SizedBox(
                       height: 15,
                     ),
                     Text(
                       'Enter a new password ',
                       style: welcomeTextSmall(),
                     ),
                     SizedBox(
                       height: 30,
                     ),
                     Container(
                       width: Get.width,
                       height: 50,
                       padding: EdgeInsets.only(left: 15),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(color: AppColor.editTextBackground),
                           color: AppColor.editTextBackground),
                       child: TextField(
                         onChanged: (text) {
                           // controller.validatePassword(text.toString());
                         },
                         style: TextStyle(color: AppColor.editTextColor),
                         controller: controller.newPassword,
                         obscureText: controller.hidePassword.value,
                         decoration: InputDecoration(
                           hintText: " New Password",
                           prefixIcon: controller.newPassword.text.isEmpty
                               ? Icon(Icons.lock)
                               : null,
                           // suffixIcon: Icon(Icons.visibility),

                           suffixIcon: controller.hidePassword.value == false
                               ? InkWell(
                               onTap: () {
                                 controller.hidePassword.value = true;
                               },
                               child: const Icon(Icons.visibility))
                               : InkWell(
                               onTap: () {
                                 controller.hidePassword.value = false;
                               },
                               child: const Icon(Icons.visibility_off)),

                           border: InputBorder.none,
                           //border:OutlineInputBorder(),
                           // border: BorderRadius.circular(),
                         ),
                       ),
                     ),
                     SizedBox(
                       height: 25,
                     ),
                     Container(
                       width: Get.width,
                       height: 50,
                       padding: EdgeInsets.only(left: 15),
                       decoration: BoxDecoration(
                           borderRadius: BorderRadius.circular(10),
                           border: Border.all(color: AppColor.editTextBackground),
                           color: AppColor.editTextBackground),
                       child: TextField(
                         onChanged: (text) {
                           // controller.validatePassword(text.toString());
                         },
                         style: TextStyle(color: AppColor.editTextColor),
                         controller: controller.confirmPassword,
                         obscureText: controller.confirmHidePassword.value,
                         decoration: InputDecoration(
                           hintText: " Confirm Password",
                           prefixIcon: controller.confirmPassword.text.isEmpty
                               ? Icon(Icons.lock)
                               : null,
                           // suffixIcon: Icon(Icons.visibility),
                           suffixIcon: controller.confirmHidePassword.value ==
                               false
                               ? InkWell(
                               onTap: () {
                                 controller.confirmHidePassword.value = true;
                               },
                               child: const Icon(Icons.visibility))
                               : InkWell(
                               onTap: () {
                                 controller.confirmHidePassword.value = false;
                               },
                               child: const Icon(Icons.visibility_off)),

                           border: InputBorder.none,
                           //border:OutlineInputBorder(),
                           // border: BorderRadius.circular(),
                         ),
                       ),
                     ),
                     SizedBox(height: 8),
                     Text("Password Mis-matched",style: TextStyle(fontSize: 14, color: Colors.red),),
                     SizedBox(
                       height: 25,
                     ),
                     CustomButton(
                         height: 50,
                         width: width,
                         text: "Continue",
                         background: Color(0xFF7D50FF),
                         shadowColor: Color(0xFF7D50FF),
                         onPressed: () {
                           controller.reset();
                         })
                   ],
                 ),
               )),
           Positioned(
             top: 40, // Adjust as needed for the status bar height
             left: 10,
             child: IconButton(
               icon: Icon(Icons.arrow_back, color: Colors.white),
               onPressed: () {
                 Navigator.of(context).pop();
               },
             ),
           ),
         ],
        ),
      ),
    );
  }
}
