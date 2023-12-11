import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';

class ContactUsScreen extends StatefulWidget {
  const ContactUsScreen({super.key});

  @override
  State<ContactUsScreen> createState() => _ContactUsScreenState();
}

class _ContactUsScreenState extends State<ContactUsScreen> {
   TextEditingController _namecontroller = TextEditingController();
    TextEditingController _emailcontroller = TextEditingController();
    TextEditingController _streetcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 145),
              child: Text(
                'Contact Us', 
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.normal
                ),
                ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
              child: Container(
                        // margin: EdgeInsets.only(top: 270),
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
                              hintText: 'Name',
                              border: InputBorder.none),
                        ),
                      ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170, left: 10, right: 10),
              child: Container(
                        // margin: EdgeInsets.only(top: 270),
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
            ),
             Padding(
               padding: const EdgeInsets.only(top: 240, left: 10, right: 10),
               child: Container(
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
             ),
              Padding(
                padding: const EdgeInsets.only(top: 310, left: 10, right: 10),
                child: Container(
                // margin: EdgeInsets.only(top: 170, left: 10, right: 10),
                        height: 130,
                        // width: double.maxFinite,
                        // color: Colors.grey.shade400,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(05)),
                            border: Border.all(color: Colors.grey.shade400)),
                        child: TextField(
                          maxLines: 4,                      decoration: InputDecoration(
                              hintStyle: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: Colors.grey.shade400),
                              contentPadding: EdgeInsets.all(15),
                              hintText: "Write your message here",
                              border: InputBorder.none),
                        ),
                      ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 470, left: 10, right: 10),
                child: Container(
                              // margin: EdgeInsets.only(top: 400),
                              // padding: EdgeInsets.all(50),
                              height: 55,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColorTwo,
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                  child: Text(
                                'Send Message',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )),
                            ),
              ),
          ],
        ),
      ),
    );
  }
}