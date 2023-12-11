import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/Profile_screen.dart';
// import 'package:flutter_application_ride_sg/BottomNavigationScreens/Activity_screen.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/history_upcoming_activity.dart';
// import 'package:flutter_application_ride_sg/HomeScreen.dart';
import 'package:flutter_application_ride_sg/Screens/HomeScreen.dart';
import 'package:flutter_application_ride_sg/Screens/custom_drawer.dart';
// import 'package:flutter_application_ride_sg/colors.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({super.key});

  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Padding(
              padding: EdgeInsets.only(
                top: 30,
              ),
              child: Stack(children: [
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
                        child: IconButton(
                            onPressed: () {
                             Get.to(()=> SideBarMenu(), transition: Transition.leftToRight);
                            },
                            icon: Icon(Icons.menu),
                            color: Colors.white),
                      ),
                      const SizedBox(
                        width: 100,
                      ),
                      Text(
                        'Favourite',
                        style: GoogleFonts.poppins(
                            color: AppColors.myblack,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.only(right: 10, top: 12),
                      child: Image.asset('assets/images/Delete.png', alignment: Alignment.topRight),
                    ),
                    margin: EdgeInsets.only(top: 100),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColorTwo),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 115, left: 55),
                  child: Text(
                    '7th Avenue',
                    style: GoogleFonts.poppins(
                      color: AppColors.myblack,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 140, left: 55),
                  child: Text(
                    '34 road, swabi,kpk',
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 115, left: 25),
                  child: Icon(Icons.location_on),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                  child: Padding(
                              padding: const EdgeInsets.only(top: 12, right: 10),
                              child: Image.asset('assets/images/Delete.png', alignment: Alignment.topRight),
                                        ),
    
                    margin: EdgeInsets.only(top: 190),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColorTwo),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 205, left: 55),
                  child: Text(
                    'Home',
                    style: GoogleFonts.poppins(
                      color: AppColors.myblack,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 230, left: 55),
                  child: Text(
                    '3432 street house number 343',
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 205, left: 25),
                  child: Icon(Icons.location_on),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 10, top: 12),
                                          child: Image.asset('assets/images/Delete.png', alignment: Alignment.topRight),
                                        ),
    
                    margin: EdgeInsets.only(top: 280),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColorTwo),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 295, left: 55),
                  child: Text(
                    '7th Avenue',
                    style: GoogleFonts.poppins(
                      color: AppColors.myblack,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 320, left: 55),
                  child: Text(
                    '34 road, swabi,kpk',
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 295, left: 25),
                  child: Icon(Icons.location_on),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 10, top: 12),
                                          child: Image.asset('assets/images/Delete.png', alignment: Alignment.topRight),
                                        ),
    
                    margin: EdgeInsets.only(top: 370),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColorTwo),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 385, left: 55),
                  child: Text(
                    'Home',
                    style: GoogleFonts.poppins(
                      color: AppColors.myblack,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 410, left: 55),
                  child: Text(
                    '3432 street house number 343',
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 385, left: 25),
                  child: Icon(Icons.location_on),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 10, top: 12),
                                          child: Image.asset('assets/images/Delete.png', alignment: Alignment.topRight),
                                        ),
    
                    margin: EdgeInsets.only(top: 460),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColorTwo),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 475, left: 55),
                  child: Text(
                    '7th Avenue',
                    style: GoogleFonts.poppins(
                      color: AppColors.myblack,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 500, left: 55),
                  child: Text(
                    '34 road, swabi,kpk',
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 475, left: 25),
                  child: Icon(Icons.location_on),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                                        child: Padding(
                                          padding: const EdgeInsets.only(right: 10, top: 12),
                                          child: Image.asset('assets/images/Delete.png', alignment: Alignment.topRight),
                                        ),
    
                    margin: EdgeInsets.only(top: 550),
                    width: double.infinity,
                    height: 70,
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColorTwo),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 565, left: 55),
                  child: Text(
                    'Home',
                    style: GoogleFonts.poppins(
                      color: AppColors.myblack,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 590, left: 55),
                  child: Text(
                    '3432 street house number 343',
                    style: GoogleFonts.poppins(
                      color: Colors.grey.shade400,
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.normal,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 565, left: 25),
                  child: Icon(Icons.location_on),
                ),

                Container(
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
                // Container(
                //   height: 100,
                //   width: double.infinity,
                //   margin: EdgeInsets.only(top: 650),
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
                      margin: EdgeInsets.only(top: 695, left: 30),
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
                    margin: EdgeInsets.only(top: 720, left: 22),
                    child: Text('Home',
                        style: GoogleFonts.poppins(
                            color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 695, left: 130),
                    child: const Icon(
                      size: 22,
                      Icons.favorite,
                      color: AppColors.primaryColorTwo,
                    )),
                Container(
                  margin: EdgeInsets.only(top: 720, left: 115),
                  child: Text('Favourite',
                      style: GoogleFonts.poppins(
                          color: AppColors.primaryColorTwo,
                          fontSize: 12,
                          fontWeight: FontWeight.w500)),
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
                      'assets/images/history_icon.png',
                      fit: BoxFit.cover,
                      color: Colors.black,
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
                            // color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
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
                            // color: Colors.black54,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  ),
                ),
              ]))),
    );
  }
}
