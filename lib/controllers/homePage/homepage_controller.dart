import 'package:flutter/material.dart';

class HomePageController with ChangeNotifier {
  bool underlined = false;

  void handleLoginContainerState() {
    if (underlined == true) {
      underlined = false;
      notifyListeners();
    } else {
      underlined = true;
      notifyListeners();
    }
  }
}
