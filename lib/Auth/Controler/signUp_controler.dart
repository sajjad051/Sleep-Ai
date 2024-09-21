
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController{

  TextEditingController email = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController password = TextEditingController();

  var hidePassword = true.obs;
  var showPassword = false.obs;

  var showEmailIcon =true.obs;
  var showNumberIcon = true.obs;
  var showLockIcon = true.obs;


  var isEmptyPassword = false.obs;
  var isEmptyNumber = false.obs;

  var isChecked = false.obs;

  void toggleCheckbox(bool? value) {
    isChecked.value = value ?? false;
  }

  signUp() {
    FormData body = FormData({
      'email': email.text,
      'number':number.text,
      'password': password.text,
    });
    print(body.fields);
  }
}