import 'package:flutter/material.dart';
// import 'package:flutter_application_ride_sg/HomeScreen.dart';
import 'package:flutter_application_ride_sg/Screens/HomeScreen.dart';
// import 'package:flutter_application_ride_sg/colors.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SetNewPasswordScreen extends StatefulWidget {
  const SetNewPasswordScreen({super.key});

  @override
  State<SetNewPasswordScreen> createState() => _SetNewPasswordScreenState();
}

class _SetNewPasswordScreenState extends State<SetNewPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _newpasswordcontroller = TextEditingController();
    TextEditingController _confirmpasswordcontroller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 20, left: 15, right: 15),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: GestureDetector(onTap: () {
                    Navigator.pop(context);
                  } ,child: Icon(Icons.arrow_back)),
                ),
                Container(
                    margin: EdgeInsets.only(left: 70, top: 70),
                    child: Text(
                      // controller: _controller,
                      'Set New Password',
                      style: GoogleFonts.poppins(
                          letterSpacing: 0.3,
                          color: AppColors.myblack,
                          // height: 0.3,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    )),
                Container(
                    margin: EdgeInsets.only(left: 87, top: 110),
                    child: Text(
                      'Set your new password',
                      style: GoogleFonts.poppins(
                          letterSpacing: 0.3,
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    )),
                // Container(
                //   margin: EdgeInsets.only(top: 170),
                //   height: 60,
                //   width: double.maxFinite,
                //   // color: Colors.grey.shade400,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(05)),
                //       border: Border.all(color: Colors.grey.shade400)),
                //   child: TextField(
                //     obscureText: true,
                //     controller: _newpasswordcontroller,
                //     decoration: InputDecoration(
                //         hintStyle: GoogleFonts.poppins(
                //             fontSize: 16,
                //             fontWeight: FontWeight.w400,
                //             fontStyle: FontStyle.normal,
                //             color: Colors.grey.shade400),
                //         contentPadding: EdgeInsets.all(18),
                //         hintText: 'Enter Your New Password',
                //         border: InputBorder.none),
                //   ),
                // ),
                Container(margin: EdgeInsets.only(top: 180) ,child: PasswordFieldWithVisibilityToggle()),
                Container(margin: EdgeInsets.only(top: 260) ,child: ConfirmPasswordFieldWithVisibilityToggle()),
                // Container(
                //   margin: EdgeInsets.only(top: 260),
                //   height: 60,
                //   width: double.maxFinite,
                //   // color: Colors.grey.shade400,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(05)),
                //       border: Border.all(color: Colors.grey.shade400)),
                //   child: TextField(
                //     obscureText: true,
                //     controller: _confirmpasswordcontroller,
                //     decoration: InputDecoration(
                //         hintStyle: GoogleFonts.poppins(
                //             fontSize: 16,
                //             fontWeight: FontWeight.w400,
                //             fontStyle: FontStyle.normal,
                //             color: Colors.grey.shade400),
                //         contentPadding: EdgeInsets.all(18),
                //         hintText: 'Confirm Password',
                //         border: InputBorder.none),
                //   ),
                // ),
                Container(
                    margin: EdgeInsets.only(top: 340),
                    child: Text(
                      'Atleast 1 number or a special character',
                      style: GoogleFonts.poppins(
                          letterSpacing: 0.3,
                          color: Colors.black38,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MainScreen()));
                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 400),
                    // padding: EdgeInsets.all(50),
                    height: 60,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        color: AppColors.primaryColorTwo,
                        borderRadius: BorderRadius.circular(5)),
                    child: const Center(
                        child: Text(
                      'Save Password',
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


class PasswordFieldWithVisibilityToggle extends StatefulWidget {
  @override
  _PasswordFieldWithVisibilityToggleState createState() => _PasswordFieldWithVisibilityToggleState();
}

class _PasswordFieldWithVisibilityToggleState extends State<PasswordFieldWithVisibilityToggle> {
  bool _isObscured = true; // Initially obscure the password

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 55,
        width: double.infinity,
        // color: Colors.grey.shade400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(05)),
          border: Border.all(color: Colors.grey.shade400)
        ),
        child: TextFormField(
          // controller: _newcontroller,
          obscureText:  _isObscured,
          decoration: InputDecoration(
            hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.grey.shade400),
            contentPadding: EdgeInsets.all(15),
            hintText: 'Enter Your New Password',
            border: InputBorder.none,
            // labelText: 'Password',
            suffixIcon: IconButton(
              color: _isObscured ? Colors.grey.shade400 : AppColors.primaryColorTwo,
              icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
              onPressed: _togglePasswordVisibility,
            ),
          ),
        ),
      ),
    );
  }
}


class ConfirmPasswordFieldWithVisibilityToggle extends StatefulWidget {
  @override
  _ConfirmPasswordFieldWithVisibilityToggleState createState() => _ConfirmPasswordFieldWithVisibilityToggleState();
}

class _ConfirmPasswordFieldWithVisibilityToggleState extends State<ConfirmPasswordFieldWithVisibilityToggle> {
  bool _isObscured = true; // Initially obscure the password

  void _togglePasswordVisibility() {
    setState(() {
      _isObscured = !_isObscured;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 55,
        width: double.infinity,
        // color: Colors.grey.shade400,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(05)),
          border: Border.all(color: Colors.grey.shade400)
        ),
        child: TextFormField(
          // controller: _newcontroller,
          obscureText:  _isObscured,
          decoration: InputDecoration(
            hintStyle: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          color: Colors.grey.shade400),
            contentPadding: EdgeInsets.all(15),
            hintText: 'Confirm Password',
            border: InputBorder.none,
            // labelText: 'Password',
            suffixIcon: IconButton(
              color: _isObscured ? Colors.grey.shade400 : AppColors.primaryColorTwo,
              icon: Icon(_isObscured ? Icons.visibility_off : Icons.visibility),
              onPressed: _togglePasswordVisibility,
            ),
          ),
        ),
      ),
    );
  }
}

