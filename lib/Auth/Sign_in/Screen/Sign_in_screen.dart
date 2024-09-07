import 'package:ai_sleep/core/usecase/app_color.dart';
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
        body: Obx(
      () => SingleChildScrollView(
        child: Container(
          height: Get.height,
          color: Color(0xFF020825),
          child: Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: height * .33,
                    width: width,
                    child: Image.asset("assets/auth_img/sign_in.jpg",
                      fit: BoxFit.fill,),
                  ),
                  Positioned(
                    top: 40, // Adjust as needed for the status bar height
                    left: 10,
                    child: IconButton(
                      icon: Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.of(context).pop(); // Go back when pressed
                      },
                    ),
                  ),
  ]
              ),

              SizedBox(height: 18,),
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
                    Row(
                      children: [
                        Text(
                          "Welcome to ",
                          //style: welcomeTextSmall(),
                          style:
                              TextStyle(fontSize: 16, color: Color(0xFF848BBD)),
                        ),
                        Text(
                          "Sleeping",
                          //style: welcomeTextSmall(),
                          style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFF848BBD),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          " acount",
                          //style: welcomeTextSmall(),
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF848BBD),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: width,
                      height: 50,
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0x19B9C4FB)),
                        color: Color(0x19B9C4FB),
                      ),
                      child: TextField(
                        onChanged: (text) {
                          controller.isEmptyEmail.value = text.isEmpty;
                        },
                        style: TextStyle(
                          color: AppColor.editTextColor,
                        ),
                        controller: controller.email,
                        decoration: InputDecoration(
                          hintText: " Enter Your Email Address",
                          // prefixIcon: controller.isEmptyEmail.value
                          //     ? Icon(Icons.email)
                          //     : null,
                           prefixIcon: controller.email.text.isEmpty?Icon(Icons.email) : null,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      width: Get.width,
                      height: 50,
                      padding: EdgeInsets.only(left: 15),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: AppColor.editTextBackground),
                          //color: Color(0x19B9C4FB)),
                          color: AppColor.editTextBackground),
                      child: TextField(
                        onChanged: (text) {
                          controller.isEmptyPassword.value = text.isEmpty;
                        },
                        style: TextStyle(
                          color: AppColor.editTextColor,
                        ),
                        controller: controller.password,
                        obscureText: controller.hidePassword.value,
                        decoration: InputDecoration(
                          hintText: " Enter Password",
                          // prefixIcon: controller.isEmptyPassword.value
                          //     ? Icon(Icons.lock)
                          //     : null,
                           prefixIcon: controller.password.text.isEmpty?Icon(Icons.email) : null,
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
                      height: 10,
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
                                fontSize: 14,
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.purple),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 19),
                    CustomButton(
                        height: 50,
                        width: width,
                        text: "Sign In",
                        background: Color(0xFF7D50FF),
                        shadowColor: Color(0xFF7D50FF),
                        onPressed: () {
                          controller.login();
                          Get.toNamed(Routes.homeScreen);
                        }),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don'\t have an account?",
                            style: welcomeTextSmall()),
                        SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.signUp);
                          },
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Color(0xFF7D50FF),
                                fontSize: 14,
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
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.transparent,
                              Colors.white.withOpacity(0.5),
                            ],
                          )),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Or Continue With",
                          style: welcomeTextSmall(),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Container(
                          width: 80,
                          height: 5,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                            begin: Alignment.centerLeft,
                            end: Alignment.centerRight,
                            colors: [
                              Colors.white.withOpacity(0.5),
                              // Colors.red,
                              Colors.transparent,
                            ],
                          )),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        SocialMediaButton(
                          icon: "assets/auth_img/apple.svg",
                          onPressed: () {},
                        ),
                        SocialMediaButton(
                          icon: "assets/auth_img/facebook.svg",
                          onPressed: () {},
                        ),
                        SocialMediaButton(
                          icon: "assets/auth_img/google.svg",
                          onPressed: () {},
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
