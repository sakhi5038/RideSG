import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Provider/signup_provider.dart';
import 'package:flutter_application_ride_sg/Screens/HomeScreen.dart';
import 'package:flutter_application_ride_sg/Screens/otp_signup_screen.dart';
import 'package:flutter_application_ride_sg/Screens/otp_verification_screen.dart';
import 'package:flutter_application_ride_sg/Screens/sign_in_screen.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:provider/provider.dart';

class MyTabScreen extends StatefulWidget {
  @override
  _MyTabScreenState createState() => _MyTabScreenState();
}

class _MyTabScreenState extends State<MyTabScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(150.0),
          child: AppBar(
            // leading: Icon(Icons.arrow_back),
            flexibleSpace: Padding(
              padding: const EdgeInsets.only(top: 10, right: 335),
              child: GestureDetector(
                onTap: (){
                  Navigator.pop(context);
                },
                child: Icon(Icons.arrow_back)),
            ),
            // flexibleSpace: ,
            automaticallyImplyLeading: false,
            titleSpacing: 20,
            toolbarHeight: 100,
            title: Padding(
              padding: const EdgeInsets.only(top: 45),
              child: Text('Sign Up with your email or\nphone number', style: GoogleFonts.poppins(
                              letterSpacing: 0.3,
                              color: AppColors.myblack,
                              // height: 0.3,
                              fontSize: 24,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),),
            ),
            bottom:  TabBar(
                controller: _tabController,
                tabs: [
                  Tab(text: 'Email'),
                  Tab(text: 'Mobile'),
                ],
              ),
              
                     
          ),
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: TabBarView(
                      controller: _tabController,
                      children: [
              SignUpDemoScreen(),
              SecondScreen(),
              // FirstScreen(),
              // SecondScreen(),
                      ],
                    ),
            ),]
        ),
        
      ),
    );
  }
}
class SignUpDemoScreen extends StatefulWidget {
  @override
  State<SignUpDemoScreen> createState() => _SignUpDemoScreenState();
}

class _SignUpDemoScreenState extends State<SignUpDemoScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }
  @override
  Widget build(BuildContext context) {
      var signUpData = Provider.of<SignUpDataProvider>(context, listen: false).data;
    TextEditingController _namecontroller = TextEditingController();
    TextEditingController _emailcontroller = TextEditingController();
    TextEditingController _numbercontroller = TextEditingController();
    var _mediaquery = MediaQuery.of(context);
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [ 
              Padding(
              padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  // const SizedBox(
                  //   height: 40,
                  // ),
                  Consumer<SignUpDataProvider>(builder: (context, value, child) {
                    return Container(
                    height: 55,
                    width: double.maxFinite,
                    // color: Colors.grey.shade400,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(05)),
                        border: Border.all(color: Colors.grey.shade400)),
                    child: TextField(
                      controller: _namecontroller,
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.all(15),
                          hintText: 'Name',
                          border: InputBorder.none),
                    ),
                  );
                  },),
                  const SizedBox(height: 20),
                  Stack(children: [
                    // Icon(Icons.arrow_back),
                    Container(
                      height: 55,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey.shade400),
                          borderRadius: BorderRadius.all(Radius.circular(05))),
                      child: TextField(
                        controller: _emailcontroller,
                        // style: GoogleFonts.poppins(
                        //     color: Colors.black54,
                        //     fontSize: 16,
                        //     fontWeight: FontWeight.w400,
                        //     fontStyle: FontStyle.normal),
                        decoration: InputDecoration(
                            // icon: Icon(Icons.abc),
                            hintText: 'Email',
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
                    Padding(
                      padding: const EdgeInsets.only(left: 280,),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> PhoneVerificationScreen()));
                        },
                        child: Container(
                          height: 55,
                          width: 90,
                          decoration: const BoxDecoration(
                            color: AppColors.primaryColorTwo,
                            // borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: Center(
                            child: Text(
                              'VERIFY',
                              style: GoogleFonts.poppins(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  fontStyle: FontStyle.normal),
                            ),
                          ),
                        ),
                      ),
                    )
                  ]),
                  const SizedBox(height: 20),
                  Container(
                    height: 55,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.all(Radius.circular(05))),
                    child: InternationalPhoneNumberInput(
                      // hintText: 'Phone Number',
                      // hintText: 'Your Mobile Number',
                      // inputBorder: OutlineInputBorder(),
                      onInputChanged: (PhoneNumber number) {
                        // Handle phone number input changes if necessary
                      },
                      inputDecoration: InputDecoration(
                          hintStyle:
                              GoogleFonts.poppins(color: Colors.grey.shade400),
                          hintText: 'Your Mobile Number',
                          border: InputBorder.none
                          // labelText: 'Your Mobile Number',
                          // border: OutlineInputBorder(),
                          ),
                      // initialCountry2LetterCode: 'US', // Initial selected country (optional)
                    ),
                  ),
          
                  const SizedBox(height: 20),
          
                  Container(
                    height: 55,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.all(Radius.circular(05))),
                    child: TextField(
                      // controller: _controller,
                      // style: GoogleFonts.poppins(
                      //     color: Colors.black54,
                      //     fontSize: 16,
                      //     fontWeight: FontWeight.w400,
                      //     fontStyle: FontStyle.normal),
                      decoration: InputDecoration(
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal,
                              color: Colors.grey.shade400),
                          contentPadding: EdgeInsets.all(15),
                          border: InputBorder.none,
                          hintText: 'Gender',
                          suffixIcon: Icon(Icons.arrow_drop_down)),
                    ),
                  ),
                  const SizedBox(height: 10),
          
                  // Row(
                  //   children: <Widget>[
                  //   ],
                  // ),
                 
                  // Row(
                  //   children: <Widget>[
                      
                  //   ],
                  // ),
                  const SizedBox(height: 20),
                  InkWell(
                    onTap: () {
        
                     Provider.of<SignUpDataProvider>(context, listen: false).updateData(
                      name: _namecontroller.text,
                      email: _emailcontroller.text,
                      gender: "",
                      termsAccepted: true,
                      phoneNumber: "",
                     );
                      // print('build');
        
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => OTPsignupverification()));
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
                        'Sign Up',
                        style: GoogleFonts.poppins(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.normal),
                      )),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/line.png'),
                      ),
                      Center(
                          child: Text(
                        'Or',
                        style: TextStyle(color: Colors.grey.shade400),
                      )),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Image.asset('assets/images/line.png'),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
          
                  // Container(
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
                    height: 80,
                  ),
          
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
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
                                  builder: (context) => SignInScreen()));
                        },
                        child: Text(
                          'Sign in',
                          style: GoogleFonts.poppins(
                              // fontSize: 14.6,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal,
                              color: Color.fromARGB(255, 194, 64, 218)),
                        ),
                      )
                    ],
                  ),
          
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
                  const SizedBox(height: 40,)
                ],
              ),
            ),
             Padding(
               padding: const EdgeInsets.only(top: 450, left: 10),
               child: CheckIconToggle(),
             ),
                      // const Icon(Icons.check_circle_outline_outlined,
                      //     color: AppColors.primaryColorTwo, ),
          
                      Padding(
                        padding: const EdgeInsets.only(top: 460, left: 50),
                        child: Text(
                          'By signing up, you agree to the ',
                          style: GoogleFonts.poppins(
                              color: Colors.grey.shade400,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 460, left: 250),
                        child: Text(
                          'Terms of service',
                          style: GoogleFonts.poppins(
                              color: AppColors.primaryColorTwo,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 480, left: 50),
                        child: Text(
                            'and ',
                            style: GoogleFonts.poppins(
                                color: Colors.grey.shade400,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                      ),
                        Padding(
                          padding: const EdgeInsets.only(top: 480, left: 80 ),
                          child: Text(
                            'Privacy policy.',
                            style: GoogleFonts.poppins(
                                color: AppColors.primaryColorTwo,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                        )
            ],
          ),
        ),
      ),
    );
  }
}

class CheckIconToggle extends StatefulWidget {
  @override
  _CheckIconToggleState createState() => _CheckIconToggleState();
}

class _CheckIconToggleState extends State<CheckIconToggle> {
  bool isChecked = false;

  void _toggleCheck() {
    setState(() {
      isChecked = !isChecked;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: isChecked ? Icon(Icons.check_circle) : Icon(Icons.circle_outlined),
      iconSize: 25,
      color: isChecked ? AppColors.primaryColorTwo : Colors.grey.shade400,
      onPressed: _toggleCheck,
    );
  }
}
class SecondScreen extends StatelessWidget {
  TextEditingController _namecontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: Container(
                      height: 55,
                      width: double.maxFinite,
                      // color: Colors.grey.shade400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(05)),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: TextField(
                        controller: _namecontroller,
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.grey.shade400),
                            contentPadding: EdgeInsets.all(15),
                            hintText: 'Mobile',
                            border: InputBorder.none),
                      ),
                    ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 110, left: 15, right: 15),
            child: Container(
                        // padding: EdgeInsets.all(50),
                        height: 55,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: AppColors.primaryColorTwo,
                            borderRadius: BorderRadius.all(Radius.circular(05))),
                        child: Center(
                            child: Text(
                          'Send Code',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        )),
                      ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 220, left: 15, right: 15),
            child: Container(
                      height: 55,
                      width: double.maxFinite,
                      // color: Colors.grey.shade400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(05)),
                          border: Border.all(color: Colors.black54)),
                      child: TextField(
                        controller: _namecontroller,
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.grey.shade400),
                            contentPadding: EdgeInsets.all(15),
                            hintText: 'Enter code you received',
                            border: InputBorder.none),
                      ),
                    ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 320, left: 15, right: 15),
            child: Container(
                        // padding: EdgeInsets.all(50),
                        height: 55,
                        width: double.infinity,
                        decoration: const BoxDecoration(
                            color: AppColors.primaryColorTwo,
                            borderRadius: BorderRadius.all(Radius.circular(05))),
                        child: Center(
                            child: Text(
                          'Verify and Sign Up',
                          style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              fontStyle: FontStyle.normal),
                        )),
                      ),
          ),
        ],
      ),
    );
  }
}




