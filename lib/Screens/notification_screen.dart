import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/Profile_screen.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/favourite_screen.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/history_upcoming_activity.dart';
import 'package:flutter_application_ride_sg/Screens/HomeScreen.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
            ),
    
            Container(
              margin: EdgeInsets.only(left: 145, top: 20),
              child: Text("Notification", style: GoogleFonts.poppins(
                color: AppColors.myblack,
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 50),
              child: Text("Today", style: GoogleFonts.poppins(
                color: AppColors.myblack,
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 90),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(color: Colors.purple.shade100),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 110),
              child: Text("Payment Confirm", style: GoogleFonts.poppins(
                color: AppColors.myblack,
                  fontSize: 16,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 140),
              child: Text("Lorem ipsum dolor sit amet consectetur. Ultrici es\ntincidunt eleifend vitae", style: GoogleFonts.poppins(
                  fontSize: 12,
                  color: Colors.grey.shade700,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 305, top: 110),
              child: Text("15 min ago", style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 210),
              child: Text("Payment Confirm", style: GoogleFonts.poppins(
                fontSize: 16,
                color: AppColors.myblack,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 240),
              child: Text("Lorem ipsum dolor sit amet consectetur. Ultrici es\ntincidunt eleifend vitae", style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 305, top: 210),
              child: Text("25 min ago", style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 300),
              child: Text("Yesterday", style: GoogleFonts.poppins(
                color: AppColors.myblack,
                  fontSize: 14,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(top: 340),
              width: double.infinity,
              height: 100,
              decoration: BoxDecoration(color: Colors.purple.shade100),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 360),
              child: Text("Payment Confirm", style: GoogleFonts.poppins(
                color: AppColors.myblack,
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 390),
              child: Text("Lorem ipsum dolor sit amet consectetur. Ultrici es\ntincidunt eleifend vitae", style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 305, top: 360),
              child: Text("1 day ago", style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 460),
              child: Text("Payment Confirm", style: GoogleFonts.poppins(
                color: AppColors.myblack,
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 490),
              child: Text("Lorem ipsum dolor sit amet consectetur. Ultrici es\ntincidunt eleifend vitae", style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 305, top: 460),
              child: Text("2 day ago", style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 540),
              child: Text("Payment Confirm", style: GoogleFonts.poppins(
                color: AppColors.myblack,
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 570),
              child: Text("Lorem ipsum dolor sit amet consectetur. Ultrici es\ntincidunt eleifend vitae", style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 305, top: 540),
              child: Text("2 day ago", style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 620),
              child: Text("Payment Confirm", style: GoogleFonts.poppins(
                color: AppColors.myblack,
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, top: 650),
              child: Text("Lorem ipsum dolor sit amet consectetur. Ultrici es\ntincidunt eleifend vitae", style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                // letterSpacing: 1
              ),),
            ),
            Container(
              margin: EdgeInsets.only(left: 305, top: 620),
              child: Text("4 day ago", style: GoogleFonts.poppins(
                fontSize: 12,
                color: Colors.grey.shade700,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                // letterSpacing: 1
              ),),
            ),
            Container(
              // height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              margin: EdgeInsets.only(top: 690),
              child: Divider(
                color: Colors.grey.shade400,
                endIndent: 2,
                indent: 1,
                // height: 10,
              ),
            ),
             GestureDetector(
              onTap: () {
                Get.to(()=> MainScreen());
              },
               child: Container(
                  margin: EdgeInsets.only(top: 720, left: 30),
                  child: const Icon(
                    size: 22,
                    Icons.home,
                    color: Colors.black54,
                  )),
             ),
            GestureDetector(
              onTap: () {
                Get.to(()=> MainScreen());
              },
              child: Container(
                margin: EdgeInsets.only(top: 745, left: 22),
                child: Text('Home',
                    style: GoogleFonts.poppins(
                        color: Colors.black54,
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
              ),
            ),
            GestureDetector(
              onTap: () {
                Get.to(()=> FavouriteScreen(), transition: Transition.noTransition);
              },
              child: Container(
                  margin: EdgeInsets.only(top: 720, left: 130),
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
                margin: EdgeInsets.only(top: 745, left: 115),
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
                margin: EdgeInsets.only(top: 722, left: 240),
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
                margin: EdgeInsets.only(top: 745, left: 225),
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
                  margin: EdgeInsets.only(top: 720, left: 330),
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
                margin: EdgeInsets.only(top: 745, left: 323),
                child: Text('Profile',
                    style: GoogleFonts.poppins(
                        fontSize: 12, fontWeight: FontWeight.w500)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

