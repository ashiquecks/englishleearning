import 'package:flutter/cupertino.dart';

class DatePickerProvider with ChangeNotifier {
  String? day;
  String? month;
  String? year;

  setDay({required String stateDay}) {
    this.day = stateDay;
    notifyListeners();
  }

  setMonth({required String stateMonth}) {
    this.month = stateMonth;
    notifyListeners();
  }

  setYear({required String stateYear}) {
    this.year = stateYear;
    notifyListeners();
  }
}
