import 'package:flutter/material.dart';

class DashboardController with ChangeNotifier {
  bool menuOpen = false;

  void handleMenuState() {
    if (menuOpen == false) {
      menuOpen = true;
      notifyListeners();
    } else {
      menuOpen = false;
      notifyListeners();
    }
  }
}
