import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class DeleteAccountScreen extends StatelessWidget {
  const DeleteAccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 125),
              child: Text('Delete Account',
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
                color: AppColors.myblack
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
            // Padding(
            //   padding: const EdgeInsets.only(left: 15, top: 100),
            //   child: Text('Privacy Policy for RIDE.SG',
            //   style: GoogleFonts.poppins(
            //     fontSize: 18,
            //     fontWeight: FontWeight.w500,
            //     fontStyle: FontStyle.normal
            //   ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 15, right: 15),
              child: Text("Are you sure you want to delete your\naccount? Please read how account\ndeletion will affect.\nDeleting your account removes personal\ninformation our database. Tour email\nbecomes permanently reserved and\nsame email cannot be re-use to register\na new account.",
              textAlign: TextAlign.justify,
              style: GoogleFonts.poppins(
                fontSize: 14,
                letterSpacing: 1.8,
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                color: Colors.black87
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 280, left: 10, right: 10),
              child: Container(
                          // margin: EdgeInsets.only(top: 400),
                          // padding: EdgeInsets.all(50),
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.orange.shade900,
                              borderRadius: BorderRadius.circular(5)),
                          child: const Center(
                              child: Text(
                            'Delete Account',
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