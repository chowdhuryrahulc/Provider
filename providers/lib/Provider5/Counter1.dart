// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Counter1 extends ChangeNotifier {
  var count = 0;
//! getter is only used if _count is pvt variable
  // int get getCounter {
  //   return _count;
  // }

  Future incrementCounter() async {
    count += 1;
    notifyListeners();
  }
}
