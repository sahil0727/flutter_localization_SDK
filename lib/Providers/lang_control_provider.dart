import 'package:flutter/cupertino.dart';

class LangController extends ChangeNotifier {
  int index = 0;

  void onLangChange(int val) {
    if (val >= 0 && val <= 2) {
      index = val;
    }
    notifyListeners();
  }
}
