import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Screens/HomeScreen.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ComplainScreen extends StatefulWidget {
  const ComplainScreen({super.key});

  @override
  State<ComplainScreen> createState() => _ComplainScreenState();
}

class _ComplainScreenState extends State<ComplainScreen> {
  final items  = [
    'Vehicle Not Clean','item 2','item 3','item 4'
  ];
  String? value;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 150),
              child: Text('Complain', style: GoogleFonts.poppins(
                color: AppColors.myblack,
                fontSize: 16,
                fontWeight: FontWeight.w500,
                fontStyle: FontStyle.normal
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20, left: 10),
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
            ),
          Container(
            margin: EdgeInsets.only(top: 100, left: 10, right: 10),
            height: 55,
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey.shade400),
              borderRadius: BorderRadius.all(Radius.circular(05))
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                // elevation: 20,
                padding: EdgeInsets.only(left: 15, top: 02),
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 36,
                isExpanded: true,
                value: value,
                items: items.map(buildMenuItem).toList(), 
                onChanged: (value) => setState(() => this.value = value),
                ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 170, left: 10, right: 10),
                    height: 130,
                    // width: double.maxFinite,
                    // color: Colors.grey.shade400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(05)),
                        border: Border.all(color: Colors.grey.shade400)),
                    child: TextField(
                      maxLines: 4,                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.all(15),
                          hintText: "Write your complain here(minimum 10 characters)",
                          border: InputBorder.none),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context, 
                        builder: (context) => CustomDialogWidget()
                        );
                    },
                    child: Container(
                            margin: EdgeInsets.only(top: 350, left: 10, right: 10),
                            height: 55,
                            // width: 350,
                            decoration: BoxDecoration(
                                color: AppColors.primaryColorTwo,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                                child: Text(
                              'Submit',
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
  DropdownMenuItem<String> buildMenuItem(String item) =>
       DropdownMenuItem(
        value: item,
        child: Text(
          item,
          style: GoogleFonts.poppins(
            fontSize: 16,
            fontWeight: FontWeight.w500,
            fontStyle: FontStyle.normal
          )
        ),        
        );
}

class CustomDialogWidget extends StatelessWidget {
  const CustomDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(05)
        ),
        width: double.infinity,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(height: 35),
            Stack(
              children: [
                Image.asset('assets/images/star.png'),
            Padding(
              padding: const EdgeInsets.only(top: 15, left: 20),
              child: Image.asset('assets/images/check_tick.png'),
            )
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Text('Send Successful', style: GoogleFonts.poppins(
              fontSize: 22,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              color: AppColors.myblack
            ),),
            Text('Your complain has been send successfully', style: GoogleFonts.poppins(
              fontSize: 12,
              fontWeight: FontWeight.w500,
              fontStyle: FontStyle.normal,
              color: Colors.grey.shade400
            ),),
            SizedBox(height: 25,),
    
            GestureDetector(
              onTap: () {
                Get.to(()=> MainScreen(), transition: Transition.noTransition);
              },
              child: Container(
                              // margin: EdgeInsets.only(top: 350, left: 10, right: 10),
                              height: 55,
                              width: 280,
                              decoration: BoxDecoration(
                                  color: AppColors.primaryColorTwo,
                                  borderRadius: BorderRadius.circular(5)),
                              child: const Center(
                                  child: Text(
                                'Back Home',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontStyle: FontStyle.normal,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              )),
                            ),
            ),
                          SizedBox(height: 25,)
          ],
        ),
      ),
    );
  }
}