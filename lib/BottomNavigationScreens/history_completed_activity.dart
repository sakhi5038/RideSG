import 'package:flutter/material.dart';
// import 'package:flutter_application_ride_sg/BottomNavigationScreens/Activity_screen.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/Profile_screen.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/favourite_screen.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/history_cancelled_activity.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/history_upcoming_activity.dart';
import 'package:flutter_application_ride_sg/Screens/HomeScreen.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class CompletedActivity extends StatefulWidget {
  const CompletedActivity({super.key});

  @override
  State<CompletedActivity> createState() => _CompletedActivityState();
}

class _CompletedActivityState extends State<CompletedActivity> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(),
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 40, left: 10),
                child: GestureDetector(
                  onTap: () {
                    Get.to(()=> MainScreen(), transition: Transition.noTransition);
                  },
                  child: Icon(Icons.arrow_back)),
              ),
              Container(
                margin: EdgeInsets.only(left: 145, top: 40),
                child: Text(
                  'Activities',
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(top: 90),
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.purple.shade100,
                  ),
                  child: Stack(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Get.to(()=> UpcomingActivity(), transition: Transition.noTransition);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 20, top: 15),
                          child: Text(
                            'Upcoming',
                            style: GoogleFonts.poppins(
                              color: AppColors.myblack,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(left: 125),
                        height: double.infinity,
                        width: 120,
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            color: AppColors.primaryColorTwo),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 150, top: 15),
                        child: Text(
                          'Completed',
                          style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                         Get.to(()=> CancelledActivity(), transition: Transition.noTransition);
                        },
                        child: Container(
                          margin: EdgeInsets.only(left: 280, top: 15),
                          child: Text(
                            'Cancelled',
                            style: GoogleFonts.poppins(
                              color: AppColors.myblack,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(top: 160),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: AppColors.primaryColorTwo)),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'Babar',
                          style: GoogleFonts.poppins(
                            color: AppColors.myblack,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 30),
                        child: Text(
                          'Mustang Shelby GT',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 280),
                        child: Text(
                          'Completed',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(top: 230),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: AppColors.primaryColorTwo)),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'Rizwan',
                          style: GoogleFonts.poppins(
                            color: AppColors.myblack,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 30),
                        child: Text(
                          'Mustang Shelby GT',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 280),
                        child: Text(
                          'Completed',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(top: 300),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: AppColors.primaryColorTwo)),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'Afridi',
                          style: GoogleFonts.poppins(
                            color: AppColors.myblack,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 30),
                        child: Text(
                          'Mustang Shelby GT',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 280),
                        child: Text(
                          'Completed',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(top: 370),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: AppColors.primaryColorTwo)),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'Babar',
                          style: GoogleFonts.poppins(
                            color: AppColors.myblack,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 30),
                        child: Text(
                          'Mustang Shelby GT',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 280),
                        child: Text(
                          'Completed',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(top: 440),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: AppColors.primaryColorTwo)),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'Rizwan',
                          style: GoogleFonts.poppins(
                            color: AppColors.myblack,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 30),
                        child: Text(
                          'Mustang Shelby GT',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 280),
                        child: Text(
                          'Completed',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(top: 510),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: AppColors.primaryColorTwo)),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'Afridi',
                          style: GoogleFonts.poppins(
                            color: AppColors.myblack,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 30),
                        child: Text(
                          'Mustang Shelby GT',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 280),
                        child: Text(
                          'Completed',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  margin: EdgeInsets.only(top: 580),
                  height: 60,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      border: Border.all(color: AppColors.primaryColorTwo)),
                  child: Stack(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          'Rizwan',
                          style: GoogleFonts.poppins(
                            color: AppColors.myblack,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 10, top: 30),
                        child: Text(
                          'Mustang Shelby GT',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.black38,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20, left: 280),
                        child: Text(
                          'Completed',
                          style: GoogleFonts.poppins(
                              fontSize: 12,
                              color: Colors.green,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              margin: EdgeInsets.only(top: 700),
              child: Divider(
                color: Colors.grey.shade400,
                endIndent: 2,
                indent: 1,
                // height: 10,
              ),
            ),
              // Container(
              //   height: 100,
              //   width: double.infinity,
              //   margin: EdgeInsets.only(top: 680),
              //   decoration: BoxDecoration(
              //       // boxShadow: [
              //       //   BoxShadow(
              //       //     color: Colors.grey.withOpacity(0.5), // Shadow color
              //       //     spreadRadius: 5, // Spread radius
              //       //     blurRadius: 7, // Blur radius
              //       //     offset: Offset(0, 3), // Offset of the shadow
              //       //   ),
              //       // ],
              //       border: Border.all(color: Colors.grey.shade400),
              //       borderRadius: BorderRadius.all(Radius.circular(10))),
              // ),
              GestureDetector(
                onTap: () {
                  Get.to(()=> MainScreen(), transition: Transition.noTransition);
                },
                child: Container(
                    margin: EdgeInsets.only(top: 725, left: 30),
                    child: const Icon(
                      size: 22,
                      Icons.home,
                      color: Colors.black54,
                    )),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(()=> MainScreen(), transition: Transition.noTransition);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 750, left: 22),
                  child: Text('Home',
                      style: GoogleFonts.poppins(
                          // color: AppColors.primaryColorTwo,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(()=> FavouriteScreen(), transition: Transition.noTransition);
                },
                child: Container(
                    margin: EdgeInsets.only(top: 725, left: 130),
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
                  margin: EdgeInsets.only(top: 750, left: 115),
                  child: Text('Favourite',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500)),
                ),
              ),
              Container(
                height: 19,
                width: 19,
                margin: EdgeInsets.only(top: 727, left: 240),
                child: Image.asset(
                  fit: BoxFit.cover,
                  'assets/images/history_icon.png',
                  color: AppColors.primaryColorTwo,
                  // height: double.infinity,
                  // width: double.infinity,
                ),
                // Icon(
                //   Icons.headset_mic_outlined,
                //   color: Colors.black54,
                //   size: 22,
                // )
              ),
              Container(
                margin: EdgeInsets.only(top: 750, left: 225),
                child: Text('Activities',
                    style: GoogleFonts.poppins(
                        color: AppColors.primaryColorTwo,
                        fontSize: 12,
                        fontWeight: FontWeight.w500)),
              ),
              GestureDetector(
                onTap: () {
                 Get.to(()=> ProfileScreen(), transition: Transition.noTransition);
                },
                child: Container(
                    margin: EdgeInsets.only(top: 725, left: 330),
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
                  margin: EdgeInsets.only(top: 750, left: 323),
                  child: Text('Profile',
                      style: GoogleFonts.poppins(
                          fontSize: 12, fontWeight: FontWeight.w500)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
