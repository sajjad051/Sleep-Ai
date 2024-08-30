
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();

  var hidePassword = true.obs;
  var showPassword = false.obs;

  signUp() {
    FormData body = FormData({
      'email': email.text,
      'number':number.text,
      'password': password.text,
    });
    print(body.fields);
  }
}