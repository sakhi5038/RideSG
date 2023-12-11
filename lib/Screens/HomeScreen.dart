import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/AddressScreens/welcome_address.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/Profile_screen.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/favourite_screen.dart';
// import 'package:flutter_application_ride_sg/BottomNavigationScreens/Activity_screen.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/history_upcoming_activity.dart';
import 'package:flutter_application_ride_sg/Provider/MainScreen_provider.dart';
import 'package:flutter_application_ride_sg/Screens/custom_drawer.dart';
import 'package:flutter_application_ride_sg/Screens/notification_screen.dart';
// import 'package:flutter_application_ride_sg/Screens/sidebar_menu.dart';
// import 'package:flutter_application_ride_sg/Profile_screen.dart';
// import 'package:flutter_application_ride_sg/colors.dart';
// import 'package:flutter_application_ride_sg/custom_app_bar.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
// import 'package:flutter_application_ride_sg/favourite_screen.dart';
// import 'package:flutter_application_ride_sg/help_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    super.key,
  });

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    var mainScreenProvider = Provider.of<MainScreenProvider>(context);
    double ScreenHeight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 30,
              // left: 15,
              // right: 15,
            ),
            child: Stack(
              // fit: StackFit.loose,
              children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: AppColors.primaryColorTwo),
                      child: GestureDetector(
                        onTap: () {
                          Get.to(()=> SideBarMenu(), transition: Transition.leftToRight);
                        },
                        child: const Icon(Icons.menu    ,
                            color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 100,
                    ),
                    Text(
                      'RIDE.SG',
                      style: GoogleFonts.poppins(
                          color: AppColors.primaryColorOne,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          fontStyle: FontStyle.normal),
                    ),
                    const SizedBox(
                      width: 95,
                    ),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          color: AppColors.primaryColorTwo),
                      child: IconButton(
                          onPressed: () {
                            Get.to(()=> NotificationScreen(), transition: Transition.noTransition);
                          },
                          icon: Icon(Icons.notifications_none),
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  margin: EdgeInsets.only(top: 70),
                  height: 150,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      color: AppColors.primaryColorOne),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 95, left: 20),
                child: Text(
                  'Ride.SG',
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 130, left: 20),
                child: Text(
                  'Cheapest Ride in\nSingapore',
                  style: GoogleFonts.poppins(
                    color: Colors.grey.shade300,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                height: 100,
                width: 150,
                margin: EdgeInsets.only(top: 90, left: 200),
                child: Image.asset('assets/images/splash_screen_logo.png'),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                  margin: EdgeInsets.only(top: 250),
                  height: 100,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.grey.shade400)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 275, left: 55),
                child: Text(
                  'Your Current Location based on GPS',
                  style: GoogleFonts.poppins(
                    color: AppColors.myblack,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 305, left: 92),
                child: Text(
                  'Your current city is woodlands',
                  style: GoogleFonts.poppins(
                    color: AppColors.primaryColorOne,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 10),
                child: Container(
                   child: Image.asset('assets/images/background-image.png',
                      fit: BoxFit.fill),
                  margin: EdgeInsets.only(
                    top: 380,
                  ),
                  height: 260,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: Colors.grey.shade400)),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 410, left: 36),
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey.shade400)),
              ),
              Container(
                margin: EdgeInsets.only(top: 410, left: 90),
                child: TextField(decoration: InputDecoration(hintText: 'From', border: InputBorder.none)),
              ),
              Container(
                // height: 10,
                // width: 10,
                margin: EdgeInsets.only(top: 425, left: 50),
                child: const Icon(
                  Icons.gps_fixed,
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 485, left: 36),
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    color: Colors.purple.shade100,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey.shade400)),
              ),
              Container(
                margin: EdgeInsets.only(top: 485, left: 90),
                child: TextField(decoration: InputDecoration(
                  hintText: 'To',
                  border: InputBorder.none
                )),
              ),
              Container(
                // height: 10,
                // width: 10,
                margin: EdgeInsets.only(top: 500, left: 50),
                child: const Icon(
                  Icons.location_on_outlined,
                  color: Colors.grey,
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 560, left: 36),
                height: 50,
                width: 320,
                decoration: BoxDecoration(
                    color: AppColors.primaryColorOne,
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    border: Border.all(color: Colors.grey.shade400)),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(()=> WelcomeAddress());
                },
                child: Container(
                  margin: EdgeInsets.only(top: 575, left: 125),
                  child: Text(
                    'Book A Ride Now',
                    style: GoogleFonts.poppins(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
              ),
              Container(
                // height: 60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                margin: EdgeInsets.only(top: 670),
                child: Divider(
                  color: Colors.grey.shade400,
                  endIndent: 2,
                  indent: 1,
                  // height: 10,
                ),
              ),
              // SafeArea(
              //   bottom: true,
              //   child: Container(
              //     height: 80,
              //     width: double.infinity,
              //     margin: EdgeInsets.only(top: 650),
              //     decoration: BoxDecoration(
              //         // boxShadow: [
              //         //   BoxShadow(
              //         //     color: Colors.grey.withOpacity(0.5), // Shadow color
              //         //     spreadRadius: 5, // Spread radius
              //         //     blurRadius: 7, // Blur radius
              //         //     offset: Offset(0, 3), // Offset of the shadow
              //         //   ),
              //         // ],
              //         border: Border.all(color: Colors.grey.shade400),
                
              //         borderRadius: BorderRadius.all(Radius.circular(10))),
              //   ),
              // ),
              Container(
                  margin: EdgeInsets.only(top: 695, left: 30),
                  child: const Icon(
                    size: 22,
                    Icons.home,
                    color: AppColors.primaryColorTwo,
                  )),
              Container(
                margin: EdgeInsets.only(top: 720, left: 22),
                child: Text('Home',
                    style: GoogleFonts.poppins(
                        color: AppColors.primaryColorTwo,
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(()=> FavouriteScreen(), transition: Transition.noTransition);
                },
                child: Container(
                    margin: EdgeInsets.only(top: 695, left: 130),
                    child: const Icon(
                      size: 22,
                      Icons.favorite_border,
                      color: Colors.black54,
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(()=> FavouriteScreen(), transition: Transition.noTransition);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 720, left: 115),
                  child: Text('Favourite',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(()=> UpcomingActivity(), transition: Transition.noTransition);
                },
                child: Container(
                  height: 19,
                  width: 19,
                  margin: EdgeInsets.only(top: 697, left: 240),
                  child: Image.asset(
                    fit: BoxFit.cover,
                    'assets/images/history_icon.png',
                    color: Colors.black,
                    // height: double.infinity,
                    // width: double.infinity,
                  ),
                  // Icon(
                  //   Icons.headset_mic_outlined,
                  //   color: Colors.black54,
                  //   size: 22,
                  // )
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(()=> UpcomingActivity(), transition: Transition.noTransition);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 720, left: 225),
                  child: Text('Activities',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500)),
                ),
              ),
              GestureDetector(
                onTap: () {
                 Get.to(()=> ProfileScreen(), transition: Transition.noTransition);
                },
                child: Container(
                    margin: EdgeInsets.only(top: 695, left: 330),
                    child: const Icon(
                      Icons.person_2_outlined,
                      color: Colors.black54,
                      size: 22,
                    )),
              ),
              GestureDetector(
                onTap: () {
                 Get.to(()=> ProfileScreen(), transition: Transition.noTransition);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 720, left: 323),
                  child: Text('Profile',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500)),
                ),
              ),
            ]),
          ),
        ),
        // bottomNavigationBar: CustomShapedBottomAppBar(),
      ),
    );
  }
}


