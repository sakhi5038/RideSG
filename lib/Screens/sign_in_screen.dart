import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Provider/signin_provider.dart';
import 'package:flutter_application_ride_sg/Screens/email_verification_screen.dart';
import 'package:flutter_application_ride_sg/Screens/forget_password_screen.dart';
import 'package:flutter_application_ride_sg/Screens/sign_up_screen.dart';
// import 'package:flutter_application_ride_sg/colors.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:get/get.dart';
// import 'package:flutter_application_ride_sg/email_verification_screen.dart';
// import 'package:flutter_application_ride_sg/sign_up_screen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';

class SignInScreen extends StatefulWidget {
  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {

    var signInData = Provider.of<SignInDataProvider>(context).data;
    TextEditingController _emailcontroller = TextEditingController();
    TextEditingController _passwordcontroller = TextEditingController();
    @override
    void dispose() {
      _emailcontroller.dispose();
      _passwordcontroller.dispose();
    }

    return SafeArea(
      child: Scaffold(
        // appBar: AppBar(
        //   // title: ,
        // ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, right: 15, left: 15, bottom: 10),
            child: Stack(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back,)) , Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  const SizedBox(
                    height: 50,
                  ),
                  // Icon(Icons.arrow_back),
                  Text(
                    'Sign in with your email or\nphone number',
                    style: GoogleFonts.poppins(
                        letterSpacing: 0.3,
                        color: AppColors.myblack,
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.normal),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                    height: 55,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: TextField(
                      // maxLength: 1234567,
                      controller: _emailcontroller,
                      // style: GoogleFonts.poppins(
                      //     color: Colors.black54,
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.w400,
                      //     fontStyle: FontStyle.normal),
                      decoration: InputDecoration(
                          hintText: 'Email or Phone Number',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.all(Radius.circular(10)))
                          ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    height: 55,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.all(Radius.circular(10))),
                    child: TextField(
                      obscureText: true,
                      controller: _passwordcontroller,
                      // style: GoogleFonts.poppins(
                      //     color: Colors.black54,
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.w400,
                      //     fontStyle: FontStyle.normal),
                      decoration: InputDecoration(
                          // icon: Icon(Icons.abc),
                          hintText: 'Enter Your Password',
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none
                          // border: OutlineInputBorder(
                          //     borderRadius: BorderRadius.all(Radius.circular(10)))
                          ),
                    ),
                  ),
            
                  // DropdownButton<String>(
                  //   alignment: Alignment.centerRight,
                  //   // hint: Text('Select Gender'),
                  //   items: ['Male', 'Female', 'Other'].map((String gender) {
                  //     return DropdownMenuItem<String>(
                  //       value: gender,
                  //       child: Text(gender),
                  //     );
                  //   }).toList(),
                  //   onChanged: (String? selectedGender) {
                  //     // Handle gender selection
                  //   },
                  // ),
                  const SizedBox(height: 10),
            
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      // Checkbox(
                      //   value: false, // You can set initial value if necessary
                      //   onChanged: (bool? value) {
                      //     // Handle checkbox selection (Terms of Service)
                      //   },
                      // ),
            
                      GestureDetector(
                        onTap: () {
                          Get.to(()=> ForgetPassword(), transition: Transition.noTransition);
                        },
                        child: Text(
                          'Forget password?',
                          style: GoogleFonts.poppins(
                              color: Colors.deepOrange.shade700,
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                    ],
                  ),
            
                  const SizedBox(height: 30),
                  InkWell(
                    onTap: () {

                      Provider.of<SignInDataProvider>(context, listen: false).updateData(
    email: _emailcontroller.text,
    password: _passwordcontroller.text,
  );

                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => EmailVerificationScreen()));
                    },
                    child: Container(
                      // padding: EdgeInsets.all(50),
                      height: 55,
                      width: 330,
                      decoration: const BoxDecoration(
                          color: AppColors.primaryColorTwo,
                          borderRadius: BorderRadius.all(Radius.circular(05))),
                      child: Center(
                          child: Text(
                        'Sign In',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                      )),
                    ),
                  ),
                  // const SizedBox(height: 30),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.center,
                  //   children: [
                  //     Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: Image.asset('assets/images/line.png'),
                  //     ),
                  //     Center(
                  //         child: Text(
                  //       'Or',
                  //       style: TextStyle(color: Colors.grey.shade400),
                  //     )),
                  //     Padding(
                  //       padding: const EdgeInsets.all(8.0),
                  //       child: Image.asset('assets/images/line.png'),
                  //     )
                  //   ],
                  // ),
                  // const SizedBox(height: 30),
            
                  // Container(
                  //   // margin: EdgeInsets.only(bottom: 100),
                  //   height: 55,
                  //   width: double.maxFinite,
                  //   decoration: BoxDecoration(
                  //       border: Border.all(color: Colors.grey.shade400),
                  //       borderRadius: BorderRadius.all(Radius.circular(05))),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Image.asset('assets/images/google.png'),
                  //       const SizedBox(
                  //         width: 10,
                  //       ),
                  //       Text(
                  //         'Continue with google',
                  //         style: GoogleFonts.poppins(
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.w500,
                  //             fontStyle: FontStyle.normal,
                  //             color: AppColors.myblack),
                  //       )
                  //     ],
                  //   ),
                  // ),
            
                  // const SizedBox(height: 20),
            
                  // Container(
                  //   // margin: EdgeInsets.only(top: 120),
                  //   // padding: EdgeInsets.only(top: ),
                  //   height: 55,
                  //   width: double.maxFinite,
                  //   decoration: BoxDecoration(
                  //       border: Border.all(color: Colors.grey.shade400),
                  //       borderRadius: BorderRadius.all(Radius.circular(05))),
                  //   child: Row(
                  //     mainAxisAlignment: MainAxisAlignment.center,
                  //     children: [
                  //       Image.asset('assets/images/facebook.png'),
                  //       const SizedBox(
                  //         width: 10,
                  //       ),
                  //       Text(
                  //         'Continue with facebook',
                  //         style: GoogleFonts.poppins(
                  //             fontSize: 16,
                  //             fontWeight: FontWeight.w500,
                  //             fontStyle: FontStyle.normal,
                  //             color: AppColors.myblack),
                  //       )
                  //     ],
                  //   ),
                  // ),
            
                  const SizedBox(
                    height: 30,
                  ),
            
                  Container(
                    // margin: EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account?",
                          style: GoogleFonts.poppins(
                              // fontSize: 14.6,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: AppColors.myblack),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => MyTabScreen()));
                          },
                          child: Padding(
                            padding: const EdgeInsets.only(left: 05),
                            child: Text(
                              'Sign Up',
                              style: GoogleFonts.poppins(
                                  // fontSize: 14.6,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal,
                                  color: AppColors.primaryColorTwo),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
            
                  // Container(
                  //   height: 60,
                  //   width: 330,
                  //   decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.black54),
                  //   ),
                  //   child: Center(child: Text('Continue With Google')),
                  // ),
                  // Padding(
                  //   padding: EdgeInsets.only(),
                  //   child: Image.asset(
                  //     // alignment: Alignment.topLeft,
                  //     'assets/images/google.png',
                  //     width: 20,
                  //     height: 20,
                  //   ),
                  // ),
                ],
              ),]
            ),
          ),
        ),
      ),
    );
  }
}
