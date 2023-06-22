import 'package:flutter/material.dart';

class HomePageController with ChangeNotifier {
  int index = 0;

  handleLoginContainerState(int val) {
    if (index == val) {
      index = 0;
      notifyListeners();
    } else {
      index = val;
      notifyListeners();
    }
  }
}
