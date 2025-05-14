import 'package:flutter/material.dart';

class CategoryProviders extends ChangeNotifier {
  bool isSection = true;

  void makeTrue() {
    isSection = true;
    notifyListeners();
  }

  void makeFalse() {
    isSection = false;
    notifyListeners();
  }
}
