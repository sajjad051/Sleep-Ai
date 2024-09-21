import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotController extends GetxController{

  TextEditingController number = TextEditingController();

  var showPhoneNumber = true.obs;

  forgot() {
    FormData body = FormData({
      'number':number.text,
    });
    print(body.fields);
  }
}