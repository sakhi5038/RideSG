import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Screens/location.dart';
// import 'package:flutter_application_ride_sg/location.dart';

// import 'package:flutter_application_ride_sg/welcome.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

@override
class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => MapScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context);
    return Scaffold(
      body: Stack(
        // crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Text(
              'RIDE.SG',
              style: TextStyle(
                  fontSize: 40,
                  color: Color.fromARGB(255, 194, 64, 218),
                  fontWeight: FontWeight.w600),
            ),
          ),
          Container(
            width: _mediaquery.size.width * 1.0,
              // width: double.infinity,
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                'assets/images/splash_screen_logo.png',
                width: double.infinity,
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}
