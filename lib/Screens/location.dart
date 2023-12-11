import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/AddressScreens/address_current.dart';
import 'package:flutter_application_ride_sg/Screens/gif_widget_screen.dart';
import 'package:flutter_application_ride_sg/Screens/welcome.dart';
// import 'package:flutter_application_ride_sg/mapbox_demo.dart';
import 'package:flutter_application_ride_sg/mapbox_screen.dart';
// import 'package:flutter_application_ride_sg/colors.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
// import 'package:flutter_application_ride_sg/welcome.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  // late GoogleMapController mapController;
  // static const LatLng sourceLocation = LatLng(37.33500926, -122.03272188);

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.black45,
        body: Padding(
          padding: const EdgeInsets.only(),
          child: Stack(
            children: [
              Container(
                width: screenWidth * 1,
                height: screenHeight * 1,
                child: Image.asset(
                  'assets/images/google_map.png',
                  // height: 600,
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                height: screenHeight * 1,
                width: screenWidth * 1,
                child: Image.asset(
                  'assets/images/background_blur.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: screenWidth * 0.06, top: screenHeight * 0.17),
                height: screenHeight * 0.60,
                width: screenWidth * 0.89,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Container(
                margin: EdgeInsets.only(left: screenWidth * 0.35, top: screenHeight * 0.15 ),
                height: screenHeight * 0.3,
                width: screenWidth * 0.3,
                child: AnimatedGifWidget(),
                // Image.asset('assets/images/Circle.png'),
              ),
              Container(
                margin: EdgeInsets.only(left: screenWidth * 0.18, top: screenHeight * 0.43),
                child: Text(
                  'Enable Your location',
                  style: GoogleFonts.poppins(
                      fontSize: 24,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 0.3,
                      color: AppColors.myblack),
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: screenWidth * 0.16, top: screenHeight * 0.48),
                child: Text(
                  textAlign: TextAlign.center,
                  'Choose your location to start find the\nrequest around you',
                  style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey.shade400),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DiliveryPage()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 37, top: 470),
                  // padding: EdgeInsets.all(50),
                  height: screenHeight * 0.07,
                  width: screenWidth * 0.82,
                  decoration: const BoxDecoration(
                      color: AppColors.primaryColorTwo,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                      child: Text(
                    'Use my location',
                    style: GoogleFonts.poppins(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                  )),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => WelcomeScreen()));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 55, top: 530),
                  // padding: EdgeInsets.all(50),
                  height: screenHeight * 0.07,
                  width: screenWidth * 0.75,
                  decoration: const BoxDecoration(
                      // color: AppColors.primaryColorTwo,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Center(
                      child: Text(
                    'Skip for now',
                    style: GoogleFonts.poppins(
                        color: Colors.grey.shade300,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                  )),
                ),
              ),
            ],
          ),
        ),
        // GoogleMap(
        //   initialCameraPosition: CameraPosition(
        //     target: sourceLocation, // Default location (San Francisco, CA)
        //     zoom: 12.0,
        //   ),
        //   markers: {
        //     Marker(markerId: MarkerId('Source'), position: sourceLocation)
        //   },
        // ),
        // Your other widgets can be added on top of the map
        // For example, you can use Positioned widget to overlay widgets on the map
      ),
    );
  }
}
