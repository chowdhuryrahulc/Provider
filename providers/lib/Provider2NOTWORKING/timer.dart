import 'package:flutter/material.dart';

class TimerInfo with ChangeNotifier {
  int remainingTime = 60;
  //getter
  int? getremainingTime() {
    remainingTime;
  }

  updateRemainingTime() {
    remainingTime--;
    notifyListeners();
  }
}
