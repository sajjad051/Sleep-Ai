import 'package:get/get.dart';

class Alarm {
  String time;
  String days;
  bool isActive;

  Alarm({required this.time, required this.days, this.isActive = false});
}

class AlarmController extends GetxController {
  // List of alarms using RxList for reactivity
  var alarms = <Alarm>[
    Alarm(time: "07:40", days: "Weekdays"),
    Alarm(time: "9:00", days: "Mon Tue Wed"),
    Alarm(time: "10:00", days: "Fri Sat"),
    Alarm(time: "8:30", days: "Sat Sun Mon Tue Wed"),
    Alarm(time: "11:00", days: "Friday"),
    Alarm(time: "8:30", days: "Sat Sun Mon Tue Wed"),
    Alarm(time: "11:00", days: "Friday"),
  ].obs;

  // Toggle the alarm state
  void toggleAlarm(int index) {
    alarms[index].isActive = !alarms[index].isActive;
    alarms.refresh(); // Update the UI
  }
}
