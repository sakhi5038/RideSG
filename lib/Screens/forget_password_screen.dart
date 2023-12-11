import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ForgetPassword extends StatefulWidget {
  const ForgetPassword({super.key});

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
          child: Stack(
            children: [
    
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back)),
              ),
    
              Container(
                margin: EdgeInsets.only(top: 70, left: 70),
                child: Text('Forgot Password?', style: GoogleFonts.poppins(
                  fontSize: 24,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w500,
                  color: AppColors.myblack
                ),),
              ),
              Container(
                margin: EdgeInsets.only(top: 120, left: 100),
                child: Image.asset('assets/images/password_circle.png')),
                Container(
                  margin: EdgeInsets.only(left: 160, top: 185),
                  child: Image.asset('assets/images/forget_password.png',)),
                  Container(
                    margin: EdgeInsets.only(top: 320),
                    height: 55,
                    width: double.maxFinite,
                    // color: Colors.grey.shade400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(05)),
                        border: Border.all(color: Colors.grey.shade400)),
                    child: TextField(
                      controller: emailController,
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.only(left: 30, bottom: 15, top: 20),
                          hintText: 'Enter Your Email',
                          border: InputBorder.none),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 400),
                      // padding: EdgeInsets.all(50),
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColorTwo,
                          borderRadius: BorderRadius.circular(5)),
                      child: const Center(
                          child: Text(
                        'Send',
                        style: TextStyle(
                            fontSize: 16,
                            fontStyle: FontStyle.normal,
                            fontWeight: FontWeight.w500,
                            color: Colors.white),
                      )),
                    ),
            ],
          ),
        ),
      ),
    );
  }
}