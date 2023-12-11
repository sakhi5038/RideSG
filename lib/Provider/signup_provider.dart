import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Model/Signup_data.dart';

class SignUpDataProvider extends ChangeNotifier {
  SignUpData _data = SignUpData(
    name: '',
    email: '',
    phoneNumber: '',
    gender: '',
    termsAccepted: false,
  );

  SignUpData get data => _data;

  void updateData({
    String? name,
    String? email,
    String? phoneNumber,
    String? gender,
    bool? termsAccepted,
  }) {
    _data = _data.copyWith(
      name: name ?? _data.name,
      email: email ?? _data.email,
      phoneNumber: phoneNumber ?? _data.phoneNumber,
      gender: gender ?? _data.gender,
      termsAccepted: termsAccepted ?? _data.termsAccepted,
    );
    notifyListeners();
  }
}