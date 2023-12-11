import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Screens/HomeScreen.dart';
import 'package:flutter_application_ride_sg/Screens/custom_drawer.dart';
import 'package:flutter_application_ride_sg/Screens/notification_screen.dart';
import 'package:flutter_application_ride_sg/contact_screen/chat_screen.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

class RidelocationScreen extends StatefulWidget {
  const RidelocationScreen({super.key});

  @override
  State<RidelocationScreen> createState() => _RidelocationScreenState();
}

class _RidelocationScreenState extends State<RidelocationScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white38,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 90, top: 140),
              child: Image.asset('assets/images/destination_point.png'),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 275, left: 260),
              child: Image.asset('assets/images/car_one.png'),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 345, left: 56),
            //   child: Image.asset('assets/images/rectangle_2.png'),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 350, left: 70),
            //   child: Text(
            //     'Pick',
            //     style: GoogleFonts.poppins(
            //         fontSize: 12,
            //         color: Colors.white,
            //         fontWeight: FontWeight.w500,
            //         fontStyle: FontStyle.normal),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 105, left: 80),
              child: Image.asset('assets/images/car_two.png'),
            ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 160, left: 290),
            //   child: Image.asset('assets/images/rectangle_1.png'),
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(top: 165, left: 305),
            //   child: Text(
            //     'Drop',
            //     style: GoogleFonts.poppins(
            //         fontSize: 12,
            //         color: Colors.white,
            //         fontWeight: FontWeight.w500,
            //         fontStyle: FontStyle.normal),
            //   ),
            // ),
            Stack(fit: StackFit.expand, children: [
              Image.asset(
                'assets/images/vector_map.png',
                color: Colors.white38,
                fit: BoxFit.fill,
              ),
            ]),
            Container(
              margin: EdgeInsets.only(top: 30, left: 10),
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.primaryColorTwo),
              child: IconButton(
                  onPressed: () {
                    Get.to(()=> SideBarMenu(), transition: Transition.leftToRight);
                  },
                  icon: Icon(Icons.menu),
                  color: Colors.white),
            ),
            Container(
              // alignment: Alignment.topRight,
              margin: EdgeInsets.only(top: 30, left: 345),
              height: 40,
              width: 40,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: AppColors.primaryColorTwo),
              child: IconButton(
                  onPressed: () {
                   Get.to(()=> NotificationScreen(), transition: Transition.noTransition);
                  },
                  icon: Icon(Icons.notifications_none),
                  color: Colors.white),
            ),
            Container(
              margin: EdgeInsets.only(top: 350),
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.only(left: 65, top: 30),
                child: Text(
                  'Your car is coming in 2:14',
                  style: GoogleFonts.poppins(
                    color: AppColors.myblack,
                      fontSize: 20, fontWeight: FontWeight.w500),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 430, left: 20),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: AppColors.primaryColorTwo)
                ),
                height: 55,
                width: 50,
                child: Image.asset('assets/images/person_pic.png', fit: BoxFit.fill,)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80, top: 425),
              child: Text('Lorem Ipsum', style: GoogleFonts.poppins(
                color: AppColors.myblack,
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 95, top: 450),
              child: Text('800m (5mins away)', style: GoogleFonts.poppins(
                  color: Colors.grey.shade500,
                  fontSize: 10,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 78, top: 450),
              child: Icon(Icons.location_on, size: 15),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 95, top: 470),
              child: Text('4.9 (531 reviews)', style: GoogleFonts.poppins(
                  color: Colors.grey.shade500,
                  fontSize: 10,
                  fontStyle: FontStyle.normal,
                  fontWeight: FontWeight.w400,
                ),),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 78, top: 470),
              child: Icon(Icons.star, size: 15, color: Colors.amber),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 430, left: 250),
              child: Container(
                height: 50,
                width: 100,
                child: Image.asset('assets/images/sports_car.png')),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 510),
              child: Text('Payment method', style: GoogleFonts.poppins(
                color: AppColors.myblack,
                fontSize: 16,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),),
            ),
             Padding(
              padding: const EdgeInsets.only(left: 250, top: 500),
              child: Text("\$120.00", style: GoogleFonts.poppins(
                color: AppColors.myblack,
                fontSize: 28,
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w500,
              ),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 540),
              child: PaymentMethodCard(cardNumber: '3456', expires: '12/24', cardType: CardType.visa),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 200, top: 15),
              child: GestureDetector(
                onTap: (){
                  Get.to(() => ChatScreen());
                },
                child: Container(
                  margin: EdgeInsets.only(top: 650),
                  height: 55,
                  width: 175,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(05)),
                      color: AppColors.primaryColorTwo),
                  child: Center(
                    child: Text('Message',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal)),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 15),
              child: Container(
                margin: EdgeInsets.only(top: 650),
                height: 55,
                width: 175,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(05)),
                    border: Border.all(color: AppColors.primaryColorTwo)
                    // color: AppColors.primaryColorTwo
                    ),
                child: Center(
                  child: Text('Call',
                      style: GoogleFonts.poppins(
                          color: AppColors.primaryColorTwo,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal)),
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
enum CardType {
  visa,
  // Add more card types as needed
}

class PaymentMethodCard extends StatelessWidget {
  final String cardNumber;
  final String expires;
  final CardType cardType;

  PaymentMethodCard({
    required this.cardNumber,
    required this.expires,
    required this.cardType,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: AppColors.primaryColorTwo,
      width: double.infinity,
      child: Card(
        color: Colors.purple.shade100,
        elevation: 5.0,
        margin: EdgeInsets.all(16.0),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Stack(
            // crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisSize: MainAxisSize.min,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 05),
                child: Image.asset(
                  _getCardLogoAsset(),
                  height: 40.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 70),
                child: Text(
                  'Expires $expires',
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              SizedBox(height: 40.0),
              Padding(
                padding: const EdgeInsets.only(top: 05, left: 70),
                child: Text(
                  '**** **** **** $cardNumber',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getCardLogoAsset() {
    switch (cardType) {
      case CardType.visa:
        return 'assets/images/payment.png'; // Replace with your actual Visa logo asset
      // Add more cases for other card types if needed
    }
  }
}