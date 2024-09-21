
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var hidePassword = true.obs;
  var showPassword = false.obs;
  var showEmailIcon = true.obs;
  var showLockIcon = true.obs;
  var checkPassword = false.obs;



  login() {
    FormData body = FormData({
      'email': email.text,
      'password': password.text,
    });
    print(body.fields);
  }
}