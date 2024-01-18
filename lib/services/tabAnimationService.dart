// ignore_for_file: file_names

import 'package:flutter/material.dart';

class TabAnimationService extends ChangeNotifier {
  int btnPressed = 0;
  bool visible = false;
  int designSelectedTab = 0;
  int portraitSelected = 0;

  void changingContext(int btnValue, bool visibility) {
    btnPressed = btnValue;
    visible = visibility;
    notifyListeners();
  }

  void changingdesignSelectedTab(int newdesignSelectedTab) {
    designSelectedTab = newdesignSelectedTab;
    notifyListeners();
  }

  void changingPortraitSelected(int newPortraitSelected) {
    portraitSelected = newPortraitSelected;
    notifyListeners();
  }

  @override
  void notifyListeners() {
    super.notifyListeners();
  }
}
