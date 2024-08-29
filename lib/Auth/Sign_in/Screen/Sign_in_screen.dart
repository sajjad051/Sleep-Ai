import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Container(
      color: Color(0xFF020825),
      child: Column(
        children: [
          Container(
            height: height * .4,
            width: width,
            child: Image.asset("assets/auth_img/sign_in.jpg"),
          )
        ],
      ),
    );
  }
}
