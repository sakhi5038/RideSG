import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Screens/set_new_password.dart';
// import 'package:flutter_application_ride_sg/colors.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
// import 'package:flutter_application_ride_sg/set_new_password.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class PhoneVerificationScreen extends StatefulWidget {
  @override
  _PhoneVerificationScreenState createState() =>
      _PhoneVerificationScreenState();
}

class _PhoneVerificationScreenState extends State<PhoneVerificationScreen> {
  TextEditingController _otpController = TextEditingController();
  // You can set your initial value for OTP, if necessary

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
        body: Padding(
          padding: const EdgeInsets.only( left: 15, right: 15),
          child: Stack(
            children: [const Padding(
              padding: const EdgeInsets.only(top: 40, left: 15, ),
              child: Icon(Icons.arrow_back),
            ) ,GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: ListView(children: [
                Padding(
                  padding: EdgeInsets.only(top: 70),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Stack(
                        // mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // Icon(Icons.arrow_back),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 50),
                            child: Text(
                              'Email Verification',
                              style: GoogleFonts.poppins(
                                  letterSpacing: 1,
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
                                  letterSpacing: 1,
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
                            borderRadius: BorderRadius.all(Radius.circular(05)),
                            fieldHeight: 48,
                            fieldWidth: 50,
                            inactiveFillColor: Colors.white,
                            activeFillColor: Colors.white,
                            selectedFillColor: Colors.white,
                            inactiveColor: Colors.black12,
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
                                color: AppColors.myblack,
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 05),
                            child: Text(
                              'Resend again',
                              style: GoogleFonts.poppins(
                                  // letterSpacing: 1,
                                  color: AppColors.primaryColorTwo,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal),
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.only(top: 340),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SetNewPasswordScreen()));
                          },
                          child: Container(
                            // padding: EdgeInsets.all(50),
                            height: 55,
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
            )],
          ),
        ),
      ),
    );
  }
}



// 
// ElevatedButton(
//               onPressed: () {
//                 // Handle OTP verification logic here
//                 String enteredOTP = _otpController.text;
//                 // Validate the entered OTP with the server or the sent OTP
//                 // You can add your validation logic here
//               },
//               child: Text('Verify OTP'),
//             ),
// 