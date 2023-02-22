import 'package:flutter/material.dart';

class UIController extends ChangeNotifier {
  bool _isPasswordObscured = true;
  bool get isPasswordObscured => _isPasswordObscured;

  /// Hide/Show Password
  setIsPasswordObscured() {
    _isPasswordObscured = !_isPasswordObscured;
    notifyListeners();
  }

  bool _isPasswordConfirmObscured = true;
  bool get isPasswordConfirmObscured => _isPasswordConfirmObscured;

  /// Hide/Show Password Confirm
  setIsPasswordConfirmObscured() {
    _isPasswordConfirmObscured = !_isPasswordConfirmObscured;
    notifyListeners();
  }
}
