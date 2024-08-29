import 'package:ai_sleep/core/usecase/text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../Route/Routes.dart';
import '../../../widget/Social_media_button.dart';
import '../../../widget/custom_button.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
        color: Color(0xFF020825),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: height * .4,
                width: width,
                child: Image.asset("assets/auth_img/signup2.jpg"),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Create Your account",
                      style: TextStyle(fontSize: 22, color: Colors.white),
                      textAlign: TextAlign.start,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Create Your Sleeping acount",
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
                        decoration: InputDecoration(
                          hintText: "Enter your Email address",
                          prefixIcon: Icon(Icons.email),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Container(
                      width: width,
                      height: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Color(0xFF848BBD)),
                        color: Color(0xFF848BBD),
                      ),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter your Phone Number",
                          prefixIcon: Icon(Icons.call),
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
                          // controller.validatePassword(text.toString());
                        },
                        decoration: InputDecoration(
                          hintText: " Enter Password",
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.visibility),

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
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Checkbox(
                          value: false,
                          onChanged: (bool? value) {

                          },
                          activeColor: Color(0xFF7D50FF),
                        ),
                        Expanded(
                          child: Text(
                            "By creating this account, you are agreeing to our terms and conditions",
                            style: welcomeTextSmall(),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    CustomButton(
                        height: 50,
                        width: width,
                        text: "Sign Up",
                        background: Color(0xFF7D50FF),
                        shadowColor: Color(0xFF7D50FF),
                        onPressed: () {}),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("already have an account ?",
                            style: welcomeTextSmall()),
                        SizedBox(
                          width: 8,
                        ),
                        InkWell(
                          onTap: () {
                            Get.toNamed(Routes.signUp);
                          },
                          child: const Text(
                            'Sign In',
                            style: TextStyle(
                                color: Color(0xFF7D50FF),
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                decorationColor: Colors.purple),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
