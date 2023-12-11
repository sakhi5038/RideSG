// import 'package:flutter/widgets.dart';

// class ScreenUtil {
//   static double _screenWidth = _screenWidth * 1;
//   static double _screenHeight = _screenHeight * 1;
//   static double _pixelRatio = 1.0;
//   static double _textScaleFactor = 1.0;

//   static double get screenWidth => _screenWidth;
//   static double get screenHeight => _screenHeight;
//   static double get textScaleFactor => _textScaleFactor;
//   static double get pixelRatio => _pixelRatio;

//   static double getResponsiveWidth(double width) {
//     return width * _screenWidth / 375; // Assuming 375 is the standard design width
//   }

//   static double getResponsiveHeight(double height) {
//     return height * _screenHeight / 667; // Assuming 667 is the standard design height
//   }

//   static void init(BuildContext context) {
//     _screenWidth = MediaQuery.of(context).size.width;
//     _screenHeight = MediaQuery.of(context).size.height;
//     _pixelRatio = MediaQuery.of(context).devicePixelRatio;
//     _textScaleFactor = MediaQuery.of(context).textScaleFactor;
//   }
// }
