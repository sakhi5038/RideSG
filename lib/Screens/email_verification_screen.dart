import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Screens/otp_verification_screen.dart';
// import 'package:flutter_application_ride_sg/colors.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
// import 'package:flutter_application_ride_sg/otp_verification_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class EmailVerificationScreen extends StatefulWidget {
  const EmailVerificationScreen({super.key});

  @override
  State<EmailVerificationScreen> createState() => _EmailVerificationScreenState();
}

class _EmailVerificationScreenState extends State<EmailVerificationScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _controller = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 40, left: 15, right: 15),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 50),
                  child: Text(
                    'Verification email or phone number',
                    style: GoogleFonts.poppins(
                      color: AppColors.myblack,
                        fontSize: 24,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 150),
                  height: 55,
                  width: double.maxFinite,
                  // color: Colors.grey.shade400,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(05)),
                      border: Border.all(color: Colors.grey.shade400)),
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal,
                            color: Colors.grey.shade400),
                        contentPadding: EdgeInsets.all(15),
                        hintText: 'Email or Phone Number',
                        border: InputBorder.none),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PhoneVerificationScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 620),
                    // padding: EdgeInsets.all(50),
                    height: 55,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColorTwo,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                        child: Text(
                      'Send OTP',
                      style: TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    )),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
