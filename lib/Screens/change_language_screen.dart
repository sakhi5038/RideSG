import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/Model/changeLanguage_data.dart';
import 'package:flutter_application_ride_sg/Provider/changelanguage_provider.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

// import 'language_model.dart';
// import 'language_provider.dart';

// void main() {
//   runApp(
//     ChangeNotifierProvider(
//       create: (context) => LanguageProvider(),
//       child: MyApp(),
//     ),
//   );
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: LanguageScreen(),
//     );
//   }
// }

class LanguageScreen extends StatelessWidget {
  final List<Language> languages = [
    Language(code: 'en', name: 'English', flag: '🇺🇸', hintText: 'English'),
    Language(code: 'hi', name: 'Hindi', flag: '🇮🇳', hintText: 'Hindi'),
    Language(code: 'ar', name: 'Arabic', flag: '🇸🇦', hintText: 'Arabic'),
    Language(code: 'fr', name: 'French', flag: '🇫🇷', hintText: 'French'),
    Language(code: 'de', name: 'German', flag: '🇩🇪', hintText: 'German'),
    Language(code: 'pt', name: 'Portuguese', flag: '🇵🇹', hintText: 'Portuguese'),
    Language(code: 'tr', name: 'Turkish', flag: '🇹🇷', hintText: 'Turkish'),
    Language(code: 'nl', name: 'Dutch', flag: '🇳🇱', hintText: 'Dutch'),

    // Add more languages as needed
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 120),
              child: Text('Change Language', style: GoogleFonts.poppins(
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
              padding: const EdgeInsets.only(top: 80,),
              child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (context, index) {
                final language = languages[index];
                return ListTile(
                  onTap: () {
                    Provider.of<LanguageProvider>(context, listen: false)
                        .setLanguage(language);
                  },
                  title: Text(language.name),
                  trailing: CheckIconToggle(),
                  subtitle: Text(language.hintText),
                  leading: Text(language.flag, style: TextStyle(fontSize: 30)),
                );
              },
                    ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 670, left: 10, right: 10),
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
            ]
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
      icon: isChecked ? Icon(Icons.check_circle_outline) : Icon(Icons.check_circle_outline),
      iconSize: 25,
      color: isChecked ? AppColors.primaryColorTwo : Colors.grey.shade400,
      onPressed: _toggleCheck,
    );
  }
}
