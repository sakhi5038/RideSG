import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Screens/sign_in_screen.dart';
import 'package:flutter_application_ride_sg/Screens/sign_up_screen.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
// import 'package:flutter_application_ride_sg/sign_in_screen.dart';
// import 'package:flutter_application_ride_sg/sign_up_screen.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    var _mediaquery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: _mediaquery.size.height * 1,
          width: _mediaquery.size.width * 1,
          child: Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Stack(
              // mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Center(
                  child: Image.asset('assets/images/welcome_text.png'),
                  // child: Text(
                  //   'Welcome',
                  //   // textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     fontSize: 25,
                  //     fontStyle: FontStyle.normal,
                  //     fontWeight: FontWeight.w500,
                  //   ),
                  // ),
                ),
                Container(
                  // height: 50,
                  width: 280,
                  margin: EdgeInsets.only(top: 70, left: 55),
                  child: Center(
                      child: Image.asset('assets/images/Private_Car_Rides_text.png')
                      // Text(
                      //   textAlign: TextAlign.center,
                      //   'Private Car Rides',
                      //   style: TextStyle(
                      //       fontSize: 14,
                      //       fontWeight: FontWeight.w500,
                      //       color: Colors.black54),
                      // ),
                      ),
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 140),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MyTabScreen()));
                    },
                    child: Container(
                      // padding: EdgeInsets.all(50),
                      height: 55,
                      width: 330,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColorTwo,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Text(
                        'Create An Account',
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                    ),
                  ),
                ),
                Container(
                  height: double.infinity,
                  width: double.infinity,
                  alignment: Alignment.bottomCenter,
                  padding: EdgeInsets.fromLTRB(20, 20, 20, 58),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignInScreen()));
                    },
                    child: Container(
                      // padding: EdgeInsets.all(50),
                      height: 55,
                      width: 330,
                      decoration: BoxDecoration(
                          border:
                              Border.all(color: AppColors.primaryColorTwo),
                          // color: Color.fromARGB(255, 194, 64, 218),
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Text(
                        'Sign In',
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColorTwo),
                      )),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 25),
                  width: double.infinity,
                  alignment: Alignment.topCenter,
                  child:
                      Image.asset('assets/images/welcome_logo.png', fit: BoxFit.fill),
                ),
                Container(
                  margin: EdgeInsets.only(top: 170),
                  width: double.infinity,
                  alignment: Alignment.topCenter,
                  child: Image.asset('assets/images/Avatar.png'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
