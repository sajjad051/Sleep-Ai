
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {

  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  var hidePassword = true.obs;
  var showPassword = false.obs;
  var hideEmailLogo = true.obs;
  var hideLockLogo = false.obs;
  var checkPassword = false.obs;

  var isEmptyEmail = false.obs;
  var isEmptyPassword = false.obs;

  login() {
    FormData body = FormData({
      'email': email.text,
      'password': password.text,
    });
    print(body.fields);
  }
}