import 'package:ai_sleep/widget/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../Route/Routes.dart';
import '../widget/rounded_button.dart';

/// Flutter code sample for [Dialog].

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        TextButton(
          onPressed: () => showDialog<String>(
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
                          //Get.toNamed(Routes.signUp);
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
          child: const Text('Show Dialog'),
        ),
      ],
    );
  }
}
