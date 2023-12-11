import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Screens/complete_profile_screen.dart';
// import 'package:flutter_application_ride_sg/colors.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
// import 'package:flutter_application_ride_sg/complete_profile_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class SetPasswordScreen extends StatefulWidget {
  const SetPasswordScreen({super.key});

  @override
  State<SetPasswordScreen> createState() => _SetPasswordScreenState();
}

class _SetPasswordScreenState extends State<SetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController _newcontroller = TextEditingController();
    TextEditingController _confirmpasswordcontroller = TextEditingController();

    return SafeArea(
      child: Scaffold(
        body: Padding(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
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
                    margin: EdgeInsets.only(left: 105, top: 70),
                    child: Text(
                      'Set Password',
                      style: GoogleFonts.poppins(
                          letterSpacing: 0.3,
                          color: Colors.black,
                          // height: 0.3,
                          fontSize: 24,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    )),
                Container(
                    margin: EdgeInsets.only(left: 113, top: 110),
                    child: Text(
                      'Set Your Password',
                      style: GoogleFonts.poppins(
                          letterSpacing: 0.3,
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    )),
                // Container(
                //   margin: EdgeInsets.only(top: 170),
                //   height: 65,
                //   width: double.maxFinite,
                //   // color: Colors.grey.shade400,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(10)),
                //       border: Border.all(color: Colors.grey.shade400)),
                //   child: TextFormField(
                //     // obscureText: true,
                //     controller: _newcontroller,
                //     decoration: InputDecoration(
                //         hintStyle: GoogleFonts.poppins(
                //             fontSize: 16,
                //             fontWeight: FontWeight.w400,
                //             fontStyle: FontStyle.normal,
                //             color: Colors.grey.shade400),
                //         contentPadding: EdgeInsets.all(20),
                //         hintText: 'Enter Your Password',
                //         border: InputBorder.none),
                //   ),
                // ),
                Container(margin: EdgeInsets.only(top: 180)   ,child: PasswordFieldWithVisibilityToggle()),
    
                Container(margin: EdgeInsets.only(top: 260) ,child: ConfirmPasswordFieldWithVisibilityToggle()),
                // Container(
                //   margin: EdgeInsets.only(top: 260),
                //   height: 65,
                //   width: double.maxFinite,
                //   // color: Colors.grey.shade400,
                //   decoration: BoxDecoration(
                //       borderRadius: BorderRadius.all(Radius.circular(10)),
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
                //         contentPadding: EdgeInsets.all(20),
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
                          color: Colors.black54,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal),
                    )),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => CompleteProfileScreen()));
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
                      'Register',
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
            hintText: 'Enter Your Password',
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
