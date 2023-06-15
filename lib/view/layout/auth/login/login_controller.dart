

import 'package:flutter/material.dart';

class LoginController extends ChangeNotifier{
    bool secureText = true;
  bool confirmSecureText = true;
  void confirmChangeSecureText() {
    confirmSecureText = !confirmSecureText;
    notifyListeners();
  }

  void changeScureText() {
    secureText = !secureText;
    notifyListeners();
  }
}