import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Model/Signin_data.dart';

class SignInDataProvider extends ChangeNotifier {
  SignInData _data = SignInData(email: '', password: '');

  SignInData get data => _data;

  void updateData({String? email, String? password}) {
    _data = _data.copyWith(
      email: email ?? _data.email,
      password: password ?? _data.password,
    );
    notifyListeners();
  }
}