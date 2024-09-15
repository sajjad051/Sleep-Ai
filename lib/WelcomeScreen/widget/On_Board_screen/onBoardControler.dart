import 'package:get/get.dart';

class OnBoardController extends GetxController {
  var pageIndex = 0.obs;

  void updateIndex(int index) {

    pageIndex.value = index;

  }
}
