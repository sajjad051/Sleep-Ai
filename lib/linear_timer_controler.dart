// import 'dart:async';
// import 'package:get/get.dart';
//
// class TimerController extends GetxController {
//   RxInt elapsedTime = 0.obs;
//   Timer? _timer;
//   var currentStage = true.obs;
//
//   // void startTimer() {
//   //   _timer?.cancel();
//   //   _timer = Timer.periodic(Duration(seconds: 1), (timer) {
//   //     elapsedTime.value++;
//   //   });
//   // }
//
//
//   void stopTimer() {
//     _timer?.cancel();
//   }
//
//   void resetTimer() {
//    // _timer?.cancel();
//     elapsedTime.value = 0;
//   }
//
//   @override
//   void onClose() {
//     _timer?.cancel();
//     super.onClose();
//   }
// }
