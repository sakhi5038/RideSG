import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Screens/HomeScreen.dart';
import 'package:flutter_application_ride_sg/Screens/about_us_screen.dart';
import 'package:flutter_application_ride_sg/Screens/complain_screen.dart';
import 'package:flutter_application_ride_sg/Screens/help_and_support_screen.dart';
import 'package:flutter_application_ride_sg/Screens/referral_screen.dart';
import 'package:flutter_application_ride_sg/Screens/settings_screen.dart';
import 'package:flutter_application_ride_sg/Screens/welcome.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBarMenu extends StatefulWidget {
  const SideBarMenu({super.key});

  @override
  State<SideBarMenu> createState() => _SideBarMenuState();
}

class _SideBarMenuState extends State<SideBarMenu> with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<Offset> _animation;
  
  // @override
  // void initState() {
  //   super.initState();
  //   _animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  //   _animation = Tween<Offset>(begin: Offset(-1, 0) end: Offset(0, 0));
  //     }
  // @override
  // void initState() {
  //   super.initState();

  //   _animationController = AnimationController(
  //     vsync: this,
  //     duration: Duration(milliseconds: 300),
  //   );

  //   _animation = Tween<Offset>(
  //     begin: Offset(-1, 0),
  //     end: Offset(0, 0),
  //   ).animate(_animationController);
  // }

  // void _toggleDrawer() {
  //   if (_animationController.isDismissed) {
  //     _animationController.forward();
  //   } else {
  //     _animationController.reverse();
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              // duration: Duration(milliseconds: 300),
              // curve: Curves.linear,
              margin: EdgeInsets.only(),
              decoration: const BoxDecoration(
                  gradient: LinearGradient(
                      colors: [AppColors.darki, AppColors.primaryColorOne],
                      begin: Alignment.center,
                      // tileMode: TileMode.mirror,
                      end: Alignment.bottomCenter,
                      stops: [
                        0.1,
                        0.8,
                      ]),
                  // color: Color.fromARGB(255, 109, 24, 166),
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      bottomRight: Radius.circular(30))),
              width: 335,
              height: double.infinity,
              // color: Colors.amber,
              child: Container(
                  height: double.infinity,
                  // height: 100,
                  // width: 100,
                  child: Stack(
                    children: [
                      const Padding(
                        padding: const EdgeInsets.only(top: 40, left: 20),
                        child: Icon(Icons.arrow_back, color: Colors.white,),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 20, top: 80),
                          // decoration: BoxDecoration(shape: BoxShape.circle),
                          height: 70,
                          width: 70,
                          child: const CircleAvatar(
                            foregroundImage:
                                AssetImage('assets/images/profile_img.jpeg'),
                            // child:
                            // Image.asset('assets/images/profile_img.jpeg')
                          )),
                      Padding(
                        padding: const EdgeInsets.only(top: 170, left: 20),
                        child: Text(
                          'Username',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontStyle: FontStyle.normal,
                              letterSpacing: 1,
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 200, left: 20),
                        child: Text(
                          'loremipsum@gmail.com',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              color: Colors.purple.shade100),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: ListView(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 220,
                              ),
                              child: ListTile(
                                title: Text(
                                  'History',
                                  style: GoogleFonts.poppins(
                                      fontSize: 14,
                                      fontStyle: FontStyle.normal,
                                      fontWeight: FontWeight.w500,
                                      color: Colors.white),
                                ),
                                leading: Image.asset(
                                  'assets/images/history_icon.png',
                                  // height: 50,
                                ),
                              ),
                            ),
                            // Divider(
                            //   color: Colors.white,
                            //   indent: 01,
                            //   endIndent: 05,
                            //   thickness: 0.3,
                            // ),
                            GestureDetector(
                              onTap: () {
                                Get.to(()=> ComplainScreen(), transition: Transition.noTransition);
                              },
                              child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    border: BorderDirectional(
                                        top: BorderSide(color: Colors.white24))),
                                child: ListTile(
                                  title: Text(
                                    'Complain',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  leading: Image.asset(
                                    'assets/images/complain_icon.png',
                                    // height: 50,
                                  ),
                                ),
                              ),
                            ),
                            // Divider(
                            //   color: Colors.white,
                            //   indent: 01,
                            //   endIndent: 05,
                            //   thickness: 0.3,
                            // ),
                            GestureDetector(
                              onTap: () {
                                Get.to(()=> ReferralScreen(), transition: Transition.noTransition);
                              },
                              child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    border: BorderDirectional(
                                        top: BorderSide(color: Colors.white24))),
                                child: ListTile(
                                  title: Text(
                                    'Referral',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  leading: Image.asset(
                                    'assets/images/refferal_icon.png',
                                    // height: 50,
                                  ),
                                ),
                              ),
                            ),
                            // Divider(
                            //   color: Colors.white,
                            //   indent: 01,
                            //   endIndent: 05,
                            //   thickness: 0.3,
                            // ),
                            GestureDetector(
                              onTap: () {
                                Get.to(()=> AboutUsScreen(), transition: Transition.noTransition);
                              },
                              child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    border: BorderDirectional(
                                        top: BorderSide(color: Colors.white24))),
                                child: ListTile(
                                  title: Text(
                                    'About Us',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  leading: Image.asset(
                                    'assets/images/about_us_icon.png',
                                    // height: 50,
                                  ),
                                ),
                              ),
                            ),
                            // Divider(
                            //   color: Colors.white,
                            //   indent: 01,
                            //   endIndent: 05,
                            //   thickness: 0.3,
                            // ),
                            GestureDetector(
                              onTap: () {
                                Get.to(()=> SettingScreen(), transition: Transition.noTransition);
                              },
                              child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    border: BorderDirectional(
                                        top: BorderSide(color: Colors.white24))),
                                child: ListTile(
                                  title: Text(
                                    'Settings',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  leading: Image.asset(
                                    'assets/images/group_icon.png',
                                    // height: 50,
                                  ),
                                ),
                              ),
                            ),
                            // Divider(
                            //   color: Colors.white,
                            //   indent: 01,
                            //   endIndent: 05,
                            //   thickness: 0.2,
                            // ),
                            GestureDetector(
                              onTap: () {
                                Get.to(()=> HelpAndSupportScreen(), transition: Transition.noTransition);
                              },
                              child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    border: BorderDirectional(
                                        top: BorderSide(color: Colors.white24))),
                                child: ListTile(
                                  title: Text(
                                    'Help & Support',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  leading: Image.asset(
                                    'assets/images/help_and_support_icon.png',
                                    // height: 50,
                                  ),
                                ),
                              ),
                            ),
                            // Divider(
                            //   color: Colors.white,
                            //   indent: 01,
                            //   endIndent: 05,
                            //   thickness: 0.2,
                            // ),
                            GestureDetector(
                              onTap: () {
                                Get.to(()=> WelcomeScreen(), transition: Transition.fadeIn);
                              },
                              child: Container(
                                height: 60,
                                width: double.infinity,
                                decoration: const BoxDecoration(
                                    border: BorderDirectional(
                                        top: BorderSide(color: Colors.white24))),
                                child: ListTile(
                                  title: Text(
                                    'Logout',
                                    style: GoogleFonts.poppins(
                                        fontSize: 14,
                                        fontStyle: FontStyle.normal,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white),
                                  ),
                                  leading: Image.asset(
                                    'assets/images/logout_icon.png',
                                    // height: 50,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ))),]
        ),
      ),
    );
  }
}
