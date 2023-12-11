import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/Image_picker.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/favourite_screen.dart';
// import 'package:flutter_application_ride_sg/BottomNavigationScreens/Activity_screen.dart';
import 'package:flutter_application_ride_sg/BottomNavigationScreens/history_upcoming_activity.dart';
// import 'package:flutter_application_ride_sg/HomeScreen.dart';
import 'package:flutter_application_ride_sg/Screens/HomeScreen.dart';
import 'package:flutter_application_ride_sg/Screens/custom_drawer.dart';
import 'package:flutter_application_ride_sg/Screens/welcome.dart';
// import 'package:flutter_application_ride_sg/colors.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';


class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}


class _ProfileScreenState extends State<ProfileScreen> {
  late CameraController _controller;
  late Future<void> _initializeControllerFuture;
  File? _image;

  @override
  void initState() {
    super.initState();
    _initializeControllerFuture = _initializeCamera();
    // _showOptionsDialog();
  }

  Future<void> _initializeCamera() async {
    final cameras = await availableCameras();
    final firstCamera = cameras.first;

    _controller = CameraController(
      firstCamera,
      ResolutionPreset.low,
    );

    return _controller.initialize();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _getImage(ImageSource source) async {
    final picker = ImagePicker();
    final pickedImage = await picker.pickImage(source: source);

    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      } else {
        print('No image selected.');
      }
      Navigator.of(context).pop(); // Close the dialog after selecting/taking a photo
    });
  }

  Future<void> _viewPhoto() async {
    if (_image != null) {
      // Open a dialog to view the selected photo
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            // icon: Icon(Icons.photo_camera),
            content: Image.file(_image!),
            actions: <Widget>[
              TextButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    } else {
      // Show an error message if no photo is selected
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: Colors.white,
            // icon: Icon(Icons.photo_camera),
            content: Text('No photo selected!'),
            actions: <Widget>[
              TextButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          );
        },
      );
    }
  }

  void _showOptionsDialog() {
    // Open a dialog with options to take a photo, pick from gallery, view photo, and cancel
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
            // icon: Icon(Icons.camera),
            backgroundColor: Colors.white,
            title: Center(child: Text('Select an Option', style: TextStyle(color: Colors.black),)),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                // ElevatedButton(
                //   style: ButtonStyle(
                    
                //     backgroundColor: MaterialStatePropertyAll(Colors.cyan.shade100)
                //     ),
                //   onPressed: () => _getImage(ImageSource.camera),
                //   child: Text('Take Photo'),
                // ),
                GestureDetector(
                  onTap: () => _getImage(ImageSource.camera),
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryColorTwo,
                    ),
                    child: Center(child: Text('Take Photo')),
                  ),
                ),
                SizedBox(height: 10),
                // ElevatedButton(
                //   style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.cyan.shade100)),
                //   onPressed: () => _getImage(ImageSource.gallery),
                //   child: Text('Choose from Gallery'),
                // ),
                 GestureDetector(
                  onTap: () => _getImage(ImageSource.gallery),
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryColorTwo,
                    ),
                    child: Center(child: Text('Choose from Gallery')),
                  ),
                ),
                SizedBox(height: 10),
                // ElevatedButton(
                //   style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.cyan.shade100)),
                //   onPressed: _viewPhoto,
                //   child: Text('View Photo'),
                // ),
                 GestureDetector(
                  onTap: _viewPhoto,
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryColorTwo,
                    ),
                    child: Center(child: Text('View Photo')),
                  ),
                ),
                SizedBox(height: 10),
                // ElevatedButton(
                //   style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.cyan.shade100)),
                //   onPressed: () {
                //     Navigator.of(context).pop(); // Close the dialog on cancel
                //   },
                //   child: Text('Cancel'),
                // ),
                 GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    height: 40,
                    width: 180,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.primaryColorTwo,
                    ),
                    child: Center(child: Text('Cancel')),
                  ),
                ),
                SizedBox(height: 10),
              ],
            ),
        );
      },
    );
  }
  void _showOptionsBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (BuildContext context) {
      return Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[

            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text('Profile Photo', style: GoogleFonts.poppins(
                fontSize: 25,
                fontWeight: FontWeight.w500
              )),
            ),
            SizedBox(height: 30,),
            GestureDetector(
              onTap: () => _getImage(ImageSource.camera),
              child: Container(
                width: double.infinity,
                height: 20,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.camera_alt, size: 30, color: AppColors.primaryColorTwo),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('Camera', style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 25,),
             GestureDetector(
              onTap: () => _getImage(ImageSource.gallery),
               child: Container(
                height: 20,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.photo, size: 30, color: AppColors.primaryColorTwo),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('Choose from Gallery', style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                  ],
                ),
                         ),
             ),
            SizedBox(height: 25,),
             GestureDetector(
              onTap: _viewPhoto,
               child: Container(
                height: 20,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.person_2_rounded, size: 30, color: AppColors.primaryColorTwo,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('View Profile Picture', style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                  ],
                ),
                         ),
             ),
            SizedBox(height: 25,),
             GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
               child: Container(
                height: 20,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Icon(Icons.delete, size: 30, color: AppColors.primaryColorTwo),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Text('Delete Profile Picture', style: GoogleFonts.poppins(
                        fontSize: 18,
                        fontWeight: FontWeight.w400
                      ),),
                    ),
                  ],
                ),
                         ),
             ),
            SizedBox(height: 40,)
            // ListTile(
            //   title: Text('Take Photo'),
            //   onTap: () {
            //     _getImage(ImageSource.camera);
            //     // Navigator.of(context).pop();
            //   },
            // ),
            // ListTile(
            //   title: Text('Choose from Gallery'),
            //   onTap: () {
            //     _getImage(ImageSource.gallery);
            //     // Navigator.of(context).pop();
            //   },
            // ),
            // ListTile(
            //   title: Text('View Photo'),
            //   onTap: () {
            //     _viewPhoto();
            //     // Navigator.of(context).pop();
            //   },
            // ),
          ],
        ),
      );
    },
  );
}

 


  @override
  Widget build(BuildContext context) {
    TextEditingController _emailcontroller = TextEditingController();
    TextEditingController _makecontroller = TextEditingController();
    TextEditingController _addresscontroller = TextEditingController();
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
              padding: const EdgeInsets.only(
                top: 30,
                // left: 10,
                // right: 10
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10, left: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
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
                        const SizedBox(
                          width: 100,
                        ),
                        // Text(
                        //   'Profile',
                        //   style: GoogleFonts.poppins(
                        //       color: AppColors.myblack,
                        //       fontSize: 16,
                        //       fontWeight: FontWeight.w500,
                        //       fontStyle: FontStyle.normal),
                        // ),
                      ],
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 165, top: 10),
                    child: Text(
                            'Profile',
                            style: GoogleFonts.poppins(
                                color: AppColors.myblack,
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                                fontStyle: FontStyle.normal),
                          ),
                  ),
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 10),
                      // child: Icon(Icons.person, size: 120, color: Colors.grey.shade400,),
                    ),
                    // child: Image.asset('assets/images/profile_img.jpeg',
                        // fit: BoxFit.fill),
                    margin: EdgeInsets.only(top: 50, left: 130),
                    height: 130,
                    width: 130,
                    decoration:
                         BoxDecoration(
                          color: Colors.black12, 
                          shape: BoxShape.circle,
                          image: DecorationImage(image: _image != null ? FileImage(_image!): AssetImage('assets/images/profile_img.jpeg') as ImageProvider, fit: BoxFit.cover)
                          ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 140, left: 220),
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: AppColors.primaryColorTwo, shape: BoxShape.circle),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 195, left: 125),
                    child: Text(
                      'Username',
                      style: GoogleFonts.poppins(
                          letterSpacing: 0.1,
                          color: AppColors.myblack,
                          // height: 0.3,
                          fontSize: 28,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.normal),
                    ),
                  ),
          //          FutureBuilder<void>(
          //   future: _initializeControllerFuture,
          //   builder: (context, snapshot) {
          //     if (snapshot.connectionState == ConnectionState.done) {
          //       return CameraPreview(_controller);
          //     } else {
          //       return Center(child: CircularProgressIndicator());
          //     }
          //   },
          // ),


          // Navigator.push(context, MaterialPageRoute(builder: (context)=> CameraPreviewScreen()));
                  Container(
                    margin: EdgeInsets.only(top: 137, left: 217),
                    child: IconButton(icon:const Icon(Icons.camera_alt_outlined), color: Colors.white, onPressed: () {
                      _showOptionsBottomSheet(context);
                    },),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      margin: EdgeInsets.only(top: 270),
                      height: 55,
                      width: double.maxFinite,
                      // color: Colors.grey.shade400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(05)),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: TextField(
                        controller: _emailcontroller,
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.grey.shade400),
                            contentPadding: EdgeInsets.all(15),
                            hintText: 'youremail@gmail.com',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      margin: EdgeInsets.only(top: 350),
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
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      margin: EdgeInsets.only(top: 430),
                      height: 55,
                      width: double.maxFinite,
                      // color: Colors.grey.shade400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(05)),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: TextField(
                        controller: _addresscontroller,
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.grey.shade400),
                            contentPadding: EdgeInsets.all(15),
                            hintText: 'Male',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: Container(
                      margin: EdgeInsets.only(top: 510),
                      height: 55,
                      width: double.maxFinite,
                      // color: Colors.grey.shade400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(05)),
                          border: Border.all(color: Colors.grey.shade400)),
                      child: TextField(
                        controller: _makecontroller,
                        decoration: InputDecoration(
                            hintStyle: GoogleFonts.poppins(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                fontStyle: FontStyle.normal,
                                color: Colors.grey.shade400),
                            contentPadding: EdgeInsets.all(15),
                            hintText: 'Address',
                            border: InputBorder.none),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> WelcomeScreen()));
                      },
                      child: Container(
                          margin: EdgeInsets.only(top: 590),
                          height: 55,
                          width: double.maxFinite,
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColors.primaryColorTwo),
                              borderRadius: BorderRadius.all(Radius.circular(05))),
                          child: Center(
                            child: Text(
                              'Logout',
                              style: GoogleFonts.poppins(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal,
                                  color: AppColors.primaryColorTwo),
                            ),
                          )),
                    ),
                  ),

                  Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              margin: EdgeInsets.only(top: 670),
              child: Divider(
                color: Colors.grey.shade400,
                endIndent: 2,
                indent: 1,
                // height: 10,
              ),
            ),
                  // Container(
                  //   height: 100,
                  //   width: double.infinity,
                  //   margin: EdgeInsets.only(top: 650),
                  //   decoration: BoxDecoration(
                  //       // boxShadow: [
                  //       //   BoxShadow(
                  //       //     color: Colors.grey.withOpacity(0.5), // Shadow color
                  //       //     spreadRadius: 5, // Spread radius
                  //       //     blurRadius: 7, // Blur radius
                  //       //     offset: Offset(0, 3), // Offset of the shadow
                  //       //   ),
                  //       // ],
                  //       border: Border.all(color: Colors.grey.shade400),
                  //       borderRadius: BorderRadius.all(Radius.circular(10))),
                  // ),
                  GestureDetector(
                    onTap: () {
                    Get.to(()=> MainScreen(), transition: Transition.noTransition);
        
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 695, left: 30),
                        child: const Icon(
                          size: 22,
                          Icons.home,
                          color: Colors.black54,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                   Get.to(()=> MainScreen(), transition: Transition.noTransition);
        
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 720, left: 22),
                      child: Text('Home',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                     Get.to(()=> FavouriteScreen(), transition: Transition.noTransition);
        
                    },
                    child: Container(
                        margin: EdgeInsets.only(top: 695, left: 130),
                        child: const Icon(
                          size: 22,
                          Icons.favorite_border,
                          color: Colors.black54,
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                    Get.to(()=> FavouriteScreen(), transition: Transition.noTransition);
        
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 720, left: 115),
                      child: Text('Favourite',
                          style: GoogleFonts.poppins(
                              color: Colors.black54,
                              fontSize: 12,
                              fontWeight: FontWeight.w500)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                     Get.to(()=> UpcomingActivity(), transition: Transition.noTransition);
        
                    },
                    child: Container(
                      height: 19,
                      width: 19,
                      margin: EdgeInsets.only(top: 697, left: 240),
                      child: Image.asset(
                        'assets/images/history_icon.png',
                        color: Colors.black,
                        fit: BoxFit.cover,
                      ),
                      // Icon(Icons.headset_mic_outlined,
                      //     size: 22, color: Colors.black54)
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                     Get.to(()=> UpcomingActivity(), transition: Transition.noTransition);
        
                    },
                    child: Container(
                      margin: EdgeInsets.only(top: 720, left: 225),
                      child: Text('Activities',
                          style: GoogleFonts.poppins(
                              fontSize: 12, fontWeight: FontWeight.w500)),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(top: 695, left: 330),
                      child: const Icon(
                          size: 22,
                          Icons.person,
                          color: AppColors.primaryColorTwo)),
                  Container(
                    margin: EdgeInsets.only(top: 720, left: 323),
                    child: Text('Profile',
                        style: GoogleFonts.poppins(
                            color: AppColors.primaryColorTwo,
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                  ),
                ],
              )),
        ),
      ),
    );

  }
  
}


