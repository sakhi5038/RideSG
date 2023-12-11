import 'package:flutter/material.dart';
// import 'package:flutter_application_ride_sg/HomeScreen.dart';
import 'package:flutter_application_ride_sg/Screens/HomeScreen.dart';
// import 'package:flutter_application_ride_sg/colors.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class CompleteProfileScreen extends StatefulWidget {
  const CompleteProfileScreen({super.key});

  @override
  State<CompleteProfileScreen> createState() => _CompleteProfileScreenState();
}

class _CompleteProfileScreenState extends State<CompleteProfileScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _namecontroller = TextEditingController();
    TextEditingController _emailcontroller = TextEditingController();
    TextEditingController _streetcontroller = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 20,),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(Icons.arrow_back)),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 20, left: 155),
                      child: Text(
                        'Profile',
                        style: GoogleFonts.poppins(
                            letterSpacing: 0.3,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal,
                            color: AppColors.myblack),
                      )),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Icon(Icons.person, size: 120, color: Colors.grey.shade400,),
                    ),
                    // child: Image.asset('assets/images/profile_img.jpeg',
                    //     fit: BoxFit.fill),
                    margin: EdgeInsets.only(top: 90, left: 120),
                    height: 130,
                    width: 130,
                    decoration:
                        BoxDecoration(color: Colors.black12, shape: BoxShape.circle),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 180, left: 220),
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: AppColors.primaryColorTwo, shape: BoxShape.circle),
                  ),
                  Container(
                    child: Icon(Icons.camera_alt_outlined, color: Colors.white),
                    margin: EdgeInsets.only(top: 190, left: 227),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 270),
                    height: 55,
                    width: double.maxFinite,
                    // color: Colors.grey.shade400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(05)),
                        border: Border.all(color: Colors.grey.shade400)),
                    child: TextField(
                      controller: _namecontroller,
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Full Name',
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 350),
                    height: 55,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.all(Radius.circular(05))),
                    child: InternationalPhoneNumberInput(
                      // hintText: 'Phone Number',
                      // hintText: 'Your Mobile Number',
                      // inputBorder: OutlineInputBorder(),
                      onInputChanged: (PhoneNumber number) {
                        // Handle phone number input changes if necessary
                      },
                      inputDecoration: InputDecoration(
                          hintStyle:
                              GoogleFonts.poppins(color: Colors.grey.shade400),
                          hintText: 'Your Mobile Number',
                          border: InputBorder.none
                          // labelText: 'Your Mobile Number',
                          // border: OutlineInputBorder(),
                          ),
                      // initialCountry2LetterCode: 'US', // Initial selected country (optional)
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 430),
                    height: 55,
                    width: double.maxFinite,
                    // color: Colors.grey.shade400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(05)),
                        border: Border.all(color: Colors.grey.shade400)),
                    child: TextField(
                      controller: _emailcontroller,
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Email',
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 510),
                    height: 55,
                    width: double.maxFinite,
                    // color: Colors.grey.shade400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(05)),
                        border: Border.all(color: Colors.grey.shade400)),
                    child: TextField(
                      controller: _streetcontroller,
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Street',
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 590),
                    height: 55,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.all(Radius.circular(05))),
                    child: TextField(
                      // controller: _controller,
                      // style: GoogleFonts.poppins(
                      //     color: Colors.black54,
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.w400,
                      //     fontStyle: FontStyle.normal),
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          hintText: 'City',
                          // labelText: 'Gender',
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.all(Radius.circular(10))),
    
                          suffixIcon: Icon(Icons.arrow_drop_down)),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 670),
                    height: 55,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.all(Radius.circular(05))),
                    child: TextField(
                      // controller: _controller,
                      // style: GoogleFonts.poppins(
                      //     color: Colors.black54,
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.w400,
                      //     fontStyle: FontStyle.normal),
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          hintText: 'District',
                          // labelText: 'Gender',
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.all(Radius.circular(10))),
    
                          suffixIcon: Icon(Icons.arrow_drop_down)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => MainScreen()));
                    },
                    child: Container(
                      // alignment: Alignment.bottomRight,
                      margin: EdgeInsets.only(top: 750, left: 195),
                      // padding: EdgeInsets.all(50),
                      height: 55,
                      width: 180,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColorTwo,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Text(
                        'Save',
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      top: 750,
                    ),
                    // padding: EdgeInsets.all(50),
                    height: 55,
                    width: 180,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        // color: AppColors.primaryColorTwo,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                        child: Text(
                      'Cancel',
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          color: Colors.black),
                    )),
                  ),
                  // SizedBox(height: 60,)
                ],
              )),
        ),
      ),
    );
  }
}
