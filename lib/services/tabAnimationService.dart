import 'package:flutter/material.dart';

class TabAnimationService extends ChangeNotifier {
  int btnPressed = 0;
  bool visible = false;

  void changingContext(int btnValue, bool visibility) {
    btnPressed = btnValue;
    visible = visibility;
    notifyListeners();
  }

  @override
  void notifyListeners() {
    super.notifyListeners();
  }
}
