import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Model/Mainscreen_data.dart';

class MainScreenProvider with ChangeNotifier {
  MainScreenData _data = MainScreenData(fromlocation: '', tolocation: ''); // Initial data

  MainScreenData get data => _data;

  void updateData({String? fromlocation, String? tolocation}){
    _data = _data.copyWith(
      fromlocation: fromlocation ?? _data.fromlocation,
      tolocation: tolocation ?? _data.tolocation,
    );
    notifyListeners();
  }
}
