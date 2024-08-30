
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ResetController extends GetxController{
  TextEditingController newPassword = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  var hidePassword = true.obs;
  var showPassword = false.obs;

  var confirmHidePassword = true.obs;
  var confirmShowPassword = false.obs;

  reset() {
    FormData body = FormData({
      'newPassword':newPassword.text,
      'confirmPassword':confirmPassword.text,
    });
    print(body.fields);
  }
}