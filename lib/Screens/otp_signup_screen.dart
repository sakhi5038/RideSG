import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Screens/set_password_screen.dart';
// import 'package:flutter_application_ride_sg/colors.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
// import 'package:flutter_application_ride_sg/set_password_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OTPsignupverification extends StatefulWidget {
  const OTPsignupverification({super.key});

  @override
  State<OTPsignupverification> createState() => _OTPsignupverificationState();
}

class _OTPsignupverificationState extends State<OTPsignupverification> {
  TextEditingController _otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   title: Center(
        //       child: Text(
        //     'Phone Verification',
        //     style: GoogleFonts.poppins(
        //         letterSpacing: 2,
        //         color: Colors.black,
        //         fontSize: 30,
        //         fontWeight: FontWeight.w500,
        //         fontStyle: FontStyle.normal),
        //   )),
        // ),
        body: Stack(
          children: [ 
            const Padding(
              padding: const EdgeInsets.only(top: 40, left: 15),
              child: Icon(Icons.arrow_back),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListView(children: [
              Padding(
                padding: EdgeInsets.only(top: 80),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Stack(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 50),
                          child: Text(
                            'Email Verification',
                            style: GoogleFonts.poppins(
                                letterSpacing: 2,
                                color: AppColors.myblack,
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 45, left: 27),
                          child: Text(
                            'Enter your OTP code',
                            style: GoogleFonts.poppins(
                                letterSpacing: 2,
                                color: Colors.black54,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: PinCodeTextField(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        appContext: context,
                        length: 4,
                        onChanged: (value) {
                          // Handle OTP value changes
                        },
                        controller: _otpController,
                        pinTheme: PinTheme(
                          shape: PinCodeFieldShape.box,
                          fieldHeight: 48,
                          fieldWidth: 50,
                          inactiveFillColor: Colors.white,
                          activeFillColor: Colors.white,
                          selectedFillColor: Colors.white,
                          inactiveColor: Colors.grey,
                          activeColor: Colors.black,
                          selectedColor: Colors.blue,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Didn't receive code? ",
                          style: GoogleFonts.poppins(
                              // letterSpacing: 1,
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        ),
                        Text(
                          'Resend again',
                          style: GoogleFonts.poppins(
                              // letterSpacing: 1,
                              color: AppColors.primaryColorTwo,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal),
                        )
                      ],
                    ),
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(top: 330),
                      child: InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SetPasswordScreen()));
                        },
                        child: Container(
                          // padding: EdgeInsets.all(50),
                          height: 60,
                          width: 350,
                          decoration: BoxDecoration(
                              color: AppColors.primaryColorTwo,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                              child: Text(
                            'Verify OTP',
                            style: TextStyle(
                                fontSize: 16,
                                fontStyle: FontStyle.normal,
                                fontWeight: FontWeight.w500,
                                color: Colors.white),
                          )),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
                      ]),
            ),]
        ),
      ),
    );
  }
}
