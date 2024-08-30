import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Route/Routes.dart';
import '../../../widget/Social_media_button.dart';
import '../../Controler/login_controler.dart';

class SignInScreen extends StatelessWidget {
   SignInScreen({super.key});

  LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Obx( () => Container(
        color: Color(0xFF020825),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * .4,
                width: width,
                child: Image.asset("assets/auth_img/sign_in.jpg"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Sign in",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Welcome to Sleeping acount",
                      style: welcomeTextSmall(),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: width,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFF848BBD),
                      ),
                      child: TextField(
                        controller: controller.email,
                        decoration: InputDecoration(
                          hintText: " Enter Your Email Address",
                          prefixIcon: controller.email.text.isEmpty? Icon(Icons.email) : null,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: Get.width,
                      height: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Color(0xFF848BBD)),
                          color: Color(0xFF848BBD)),
                      child: TextField(
                        onChanged: (text) {

                        },
                        controller: controller.password,
                        obscureText: controller.hidePassword.value,
                        decoration: InputDecoration(
                          hintText: " Enter Password",
                          prefixIcon:controller.password.text.isEmpty ? Icon(Icons.lock) :null,

                          //suffixIcon: Icon(Icons.visibility),
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
                      height: 8,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.forgotPage);
                          },
                          child: const Text(
                            'Forget Password?',
                            style: TextStyle(
                                color: Color(0xFF7D50FF),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.purple),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                        height: 50,
                        width: width,
                        text: "Sign In" ,
                        background: Color(0xFF7D50FF),
                        shadowColor: Color(0xFF7D50FF),
                        onPressed: () {
                            controller.login();
                        }),
          
                    SizedBox(height: 15,),
          
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don'\t have an account?", style: welcomeTextSmall()),
                        SizedBox(width: 8,),
                        InkWell(
                          onTap: () {
          
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color(0xFF7D50FF),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.purple),
                          ),
                        ),
                      ],
                    ),
          
                    SizedBox(height: 15),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          width: 80,
                          height: 5,
                          decoration:  BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.transparent,
                                  Colors.white.withOpacity(0.5),
                                ],
                              )
                          ),
                        ),
                        const SizedBox(width: 10,),
                        Text(
                          "Or Continue With",
                          style: welcomeTextSmall(),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          width: 80,
                          height: 5,
                          decoration:  BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerLeft,
                                end: Alignment.centerRight,
                                colors: [
                                  Colors.white.withOpacity(0.5),
                                  // Colors.red,
                                  Colors.transparent,
                                ],
                              )
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SocialMediaButton(
                          icon: "assets/auth_img/apple.svg",
                          onPressed: (){
                          },
                        ),
                        SocialMediaButton(
                          icon: "assets/auth_img/facebook.svg",
                          onPressed: (){
                          },
                        ),
                        SocialMediaButton(
                          icon: "assets/auth_img/google.svg",
                          onPressed: (){
                          },
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: 25,)
            ],
          ),
        ),
      ),
      )
    );
  }
}
