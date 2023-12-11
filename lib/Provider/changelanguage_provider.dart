import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Model/changeLanguage_data.dart';

class LanguageProvider extends ChangeNotifier {
  late Language _selectedLanguage;

  Language get selectedLanguage => _selectedLanguage;

  void setLanguage(Language language) {
    _selectedLanguage = language;
    notifyListeners();
  }
}
