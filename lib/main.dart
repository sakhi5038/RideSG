import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Provider/MainScreen_provider.dart';
import 'package:flutter_application_ride_sg/Provider/changelanguage_provider.dart';
import 'package:flutter_application_ride_sg/Provider/signin_provider.dart';
import 'package:flutter_application_ride_sg/Provider/signup_provider.dart';
// import 'package:flutter_application_ride_sg/Screens/sign_up_screen.dart';
// import 'package:flutter_application_ride_sg/Screens/sign_up_screen.dart';
import 'package:flutter_application_ride_sg/Screens/splash_screen.dart';
// import 'package:flutter_application_ride_sg/Screens/tabBar.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
// import 'package:shared_preferences/shared_preferences.dart';


// late SharedPreferences sharedPreferences;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // sharedPreferences = await SharedPreferences.getInstance();
  // await dotenv.load(fileName: "assets/images/config/.env");
  var status = await Permission.location.request();
  print("Location Permission Status: $status");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => SignUpDataProvider()),
        ChangeNotifierProvider(create: (context) => SignInDataProvider()),
        ChangeNotifierProvider(create: (context) => MainScreenProvider()),
        ChangeNotifierProvider(create: (context) => LanguageProvider())
      ],
      child: GetMaterialApp(
        // useInheritedMediaQuery: true,
        // builder: DevicePreview.appBuilder,
        debugShowCheckedModeBanner: false,
        title: 'RideSg',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: SplashScreen(),
      
      ),
    );
  }
}

