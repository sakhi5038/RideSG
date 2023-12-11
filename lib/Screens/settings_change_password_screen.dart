import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsChangePassword extends StatefulWidget {
  const SettingsChangePassword({super.key});

  @override
  State<SettingsChangePassword> createState() => _SettingsChangePasswordState();
}

class _SettingsChangePasswordState extends State<SettingsChangePassword> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 120),
              child: Text('Change Password', style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal
              ),),
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
              padding: const EdgeInsets.only(top: 90, left: 10, right: 10),
              child: PasswordFieldWithVisibilityToggle(),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 170, left: 10, right: 10),
              child: NewPasswordFieldWithVisibilityToggle(),
            ),
            Padding(
              padding: EdgeInsets.only(top: 250, left: 10, right: 10),
              child: ConfirmPasswordFieldWithVisibilityToggle()),
              Padding(
                padding: const EdgeInsets.only(top: 330, left: 10, right: 10),
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
                          'Save',
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
            hintText: 'Old Password',
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


class NewPasswordFieldWithVisibilityToggle extends StatefulWidget {
  @override
  _NewPasswordFieldWithVisibilityToggleState createState() => _NewPasswordFieldWithVisibilityToggleState();
}

class _NewPasswordFieldWithVisibilityToggleState extends State<NewPasswordFieldWithVisibilityToggle> {
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
            hintText: 'New Password',
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