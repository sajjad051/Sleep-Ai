import 'package:get/get.dart';

class HomeSliderController extends GetxController {
  var indexNo = 0.obs;

  void updateIndex(int index) {
    indexNo.value = index;
  }
}
