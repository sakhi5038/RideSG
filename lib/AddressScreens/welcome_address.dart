import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Screens/HomeScreen.dart';
import 'package:flutter_application_ride_sg/Screens/custom_drawer.dart';
import 'package:flutter_application_ride_sg/Screens/notification_screen.dart';
import 'package:flutter_application_ride_sg/contact_screen/location_screen.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeAddress extends StatefulWidget {
  const WelcomeAddress({super.key});

  @override
  State<WelcomeAddress> createState() => _WelcomeAddressState();
}

class _WelcomeAddressState extends State<WelcomeAddress> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white38,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 140),
              child: Image.asset('assets/images/Vector_2.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 315, left: 67),
              child: Image.asset('assets/images/map_2.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 345, left: 56),
              child: Image.asset('assets/images/rectangle_2.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 350, left: 70),
              child: Text(
                'Pick',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 300),
              child: Image.asset('assets/images/map_1.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 160, left: 290),
              child: Image.asset('assets/images/rectangle_1.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 165, left: 305),
              child: Text(
                'Drop',
                style: GoogleFonts.poppins(
                    fontSize: 12,
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.normal),
              ),
            ),
            Stack(fit: StackFit.expand, children: [
              Image.asset(
                'assets/images/Vector.png',
                color: Colors.white38,
                fit: BoxFit.fill,
              ),
            ]),
            Container(
              margin: EdgeInsets.only(top: 30, left: 10),
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.primaryColorTwo),
              child: IconButton(
                  onPressed: () {
                    Get.to(()=> SideBarMenu(), transition: Transition.leftToRight);
                  },
                  icon: Icon(Icons.menu),
                  color: Colors.white),
            ),
            Container(
              // alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 30, left: 345),
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
            Container(
              margin: EdgeInsets.only(top: 400),
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(left: 120, top: 30),
                child: Text(
                  'Select Address',
                  style: GoogleFonts.poppins(
                    color: AppColors.myblack,
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            const Padding(
              padding: const EdgeInsets.only(left: 20, top: 500),
              child: Icon(Icons.location_on, color: Colors.green),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 500),
              child: Text(
                'Current Location',
                style: GoogleFonts.poppins(
                  color: AppColors.myblack,
                    letterSpacing: 0.5,
                    fontSize: 14.5,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 522),
              child: Text(
                '2972 Westheimer Rd. Santa Ana, Illinois 85486 ',
                style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Colors.black26,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 520, left: 30),
              child: Image.asset('assets/images/line_2.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 560),
              child: Icon(Icons.location_on, color: Colors.orange.shade900),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 560),
              child: Text(
                'Office',
                style: GoogleFonts.poppins(
                  color: AppColors.myblack,
                    letterSpacing: 0.5,
                    fontSize: 14.5,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 582),
              child: Text(
                '1901 Thornridge Cir. Shiloh, Hawaii 81063',
                style: GoogleFonts.poppins(
                    fontSize: 10,
                    color: Colors.black26,
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 0.5),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: GestureDetector(
                onTap: () {
                  Get.to(()=> RidelocationScreen());
                },
                child: Container(
                  margin: EdgeInsets.only(top: 650),
                  height: 55,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(05)),
                      color: AppColors.primaryColorTwo),
                  child: Center(
                    child: Text('Confirm Location',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
