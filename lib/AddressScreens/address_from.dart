import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Screens/custom_drawer.dart';
import 'package:flutter_application_ride_sg/Screens/notification_screen.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FromAddress extends StatefulWidget {
  const FromAddress({super.key});

  @override
  State<FromAddress> createState() => _FromAddressState();
}

class _FromAddressState extends State<FromAddress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white38,
      body: Stack(
        // fit: StackFit.loose,
        children: [
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
            margin: EdgeInsets.only(top: 280),
            height: double.infinity,
            width: double.infinity,
            // color: Colors.white,
            decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20))),
            child: const Padding(
              padding: const EdgeInsets.all(20.0),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 310, left: 120),
            child: Text(
              'Select Address',
              style: GoogleFonts.poppins(
                color: AppColors.myblack,
                  fontSize: 20, fontWeight: FontWeight.w500),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 380,
              right: 15,
              left: 15,
            ),
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Colors.purple.shade100,
                borderRadius: BorderRadius.all(Radius.circular(05)),
                border: Border.all(color: Colors.grey.shade400)),
            child: const Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'From',
                    border: InputBorder.none,
                    icon: Icon(Icons.gps_fixed_outlined),
                    iconColor: Colors.black45),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              top: 445,
              left: 15,
              right: 15,
            ),
            height: 55,
            width: double.infinity,
            decoration: BoxDecoration(
                // color: Colors.purple.shade100,
                borderRadius: BorderRadius.all(Radius.circular(05)),
                border: Border.all(color: Colors.grey.shade400)),
            child: const Padding(
              padding: const EdgeInsets.only(left: 10),
              child: TextField(
                decoration: InputDecoration(
                    hintText: 'To',
                    border: InputBorder.none,
                    icon: Icon(Icons.location_on_outlined),
                    iconColor: Colors.black45),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 525, left: 20),
            child: Text(
              'Recent places',
              style: GoogleFonts.poppins(
                  letterSpacing: 0.5,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 30, top: 560),
            child: Icon(Icons.location_on),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 560),
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
            padding: const EdgeInsets.only(left: 60, top: 582),
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
            padding: const EdgeInsets.only(top: 560, left: 335),
            child: Text(
              '2.7KM',
              style: GoogleFonts.poppins(
                color: AppColors.myblack,
                  fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 30, top: 610),
            child: Icon(Icons.location_on),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 610),
            child: Text(
              'Coffee shop',
              style: GoogleFonts.poppins(
                color: AppColors.myblack,
                  letterSpacing: 0.5,
                  fontSize: 14.5,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 632),
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
            padding: const EdgeInsets.only(top: 610, left: 335),
            child: Text(
              '1.1KM',
              style: GoogleFonts.poppins(
                color: AppColors.myblack,
                  fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 30, top: 660),
            child: Icon(Icons.location_on),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 660),
            child: Text(
              'Shopping Center',
              style: GoogleFonts.poppins(
                color: AppColors.myblack,
                  letterSpacing: 0.5,
                  fontSize: 14.5,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 682),
            child: Text(
              '4140 Parker Rd. Allentown, New Mexico 31134',
              style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: Colors.black26,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 660, left: 335),
            child: Text(
              '4.9KM',
              style: GoogleFonts.poppins(
                color: AppColors.myblack,
                  fontSize: 12, fontWeight: FontWeight.w500),
            ),
          ),
          const Padding(
            padding: const EdgeInsets.only(left: 30, top: 710),
            child: Icon(Icons.location_on),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 710),
            child: Text(
              'Shopping mall',
              style: GoogleFonts.poppins(
                color: AppColors.myblack,
                  letterSpacing: 0.5,
                  fontSize: 14.5,
                  fontWeight: FontWeight.w500),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 732),
            child: Text(
              '4140 Parker Rd. Allentown, New Mexico 31134',
              style: GoogleFonts.poppins(
                  fontSize: 10,
                  color: Colors.black26,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 0.5),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 710, left: 335),
            child: Text(
              '4.0KM',
              style: GoogleFonts.poppins(
                color: AppColors.myblack,
                  fontSize: 12, fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
