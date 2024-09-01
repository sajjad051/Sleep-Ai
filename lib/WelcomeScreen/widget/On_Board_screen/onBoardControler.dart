import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class OnBoardController extends GetxController {
  var pageIndex = 0.obs;

  void updateIndex(int index) {
    pageIndex.value = index;
  }
}