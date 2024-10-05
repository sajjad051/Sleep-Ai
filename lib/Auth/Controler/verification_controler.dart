
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class VerificationController extends GetxController{

  TextEditingController first = TextEditingController();
  TextEditingController second = TextEditingController();
  TextEditingController third = TextEditingController();
  TextEditingController fourth = TextEditingController();

  var firstText = true.obs;
  var secondText = true.obs;
  var thirdText = true.obs;
  var fourthText = true.obs;



  verification() {
    String combinedNumber = first.text + second.text + third.text + fourth.text;

    FormData body = FormData({
      'number': combinedNumber,
    });

    print(body.fields);
  }

}

