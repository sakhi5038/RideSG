import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ReferralScreen extends StatefulWidget {
  const ReferralScreen({super.key});

  @override
  State<ReferralScreen> createState() => _ReferralScreenState();
}

class _ReferralScreenState extends State<ReferralScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 155),
              child: Text('Referral', style: GoogleFonts.poppins(
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
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
              padding: const EdgeInsets.only(top: 100, left: 18),
              child: Text("Refer a friend and earn \$20",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.black54
              ), ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 130, left: 15, right: 15),
              child: Container(
                height: 60,
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey.shade400),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    suffixIcon: Icon(Icons.copy),
                    border: InputBorder.none,
                    contentPadding: EdgeInsets.all(15),                  
                  ),
                ),
              ),
            ),
            Container(
                      margin: EdgeInsets.only(top: 220, left: 15, right: 15),
                      // padding: EdgeInsets.all(50),
                      height: 55,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.primaryColorTwo,
                          borderRadius: BorderRadius.circular(10)),
                      child: const Center(
                          child: Text(
                        'Invite',
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
    );
  }
}