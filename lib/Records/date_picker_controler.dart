import 'package:get/get.dart';

class DatePickerControllerr extends GetxController {
  var selectedDate = DateTime.now().obs;
  var todayDate = DateTime.now().obs;
  //var monthName = DateTime.now().obs;



  void updateSelectedDate(DateTime date) {
    selectedDate.value = date;
  }
}




String getWeekdaysName(int weekDaysNumber) {
  switch (weekDaysNumber) {
    case 1:
      return "Monday";
    case 2:
      return "Tuesday";
    case 3:
      return "Wednesday";
    case 4:
      return "Thursday";
    case 5:
      return "Friday";
    case 6:
      return "Saturday";
    case 7:
      return "Sunday";
    default:
      return "Invalid Month";
  }
}


String getMonthName(int monthNumber) {
  switch (monthNumber) {
    case 1:
      return "Jan";
    case 2:
      return "Feb";
    case 3:
      return "Mar";
    case 4:
      return "Apr";
    case 5:
      return "May";
    case 6:
      return "Jun";
    case 7:
      return "Jul";
    case 8:
      return "Aug";
    case 9:
      return "Sep";
    case 10:
      return "Oct";
    case 11:
      return "Nov";
    case 12:
      return "Dec";
    default:
      return "Invalid Month";
  }
}
