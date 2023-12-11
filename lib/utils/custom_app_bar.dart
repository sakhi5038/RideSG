import 'package:flutter/material.dart';

class CustomShapedBottomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          // color: Colors.black,
          // boxShadow: [
          //   BoxShadow(
          //     color: Colors.grey.withOpacity(0.5),
          //     spreadRadius: 5,
          //     blurRadius: 7,
          //     offset: Offset(0, 3),
          //   ),
          // ],
          border: Border.all(color: Colors.grey.shade400),
          borderRadius: BorderRadius.all(Radius.circular(20))),
      child: ClipPath(
        clipper: ShapeBorderClipper(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
        ),
        child: BottomAppBar(
          shape:
              CircularNotchedRectangle(), // Optional: You can set the shape of the FAB notch
          color: Colors.white, // Background color of the BottomAppBar
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              // Text('Home'),
              // ListTile(
              //   leading: Icon(Icons.star), // Icon displayed on the left side
              //   title: Text('Favourite'), // Text displayed next to the icon
              //   subtitle: Text(
              //       'This is a subtitle'), // Optional: Subtitle below the title
              //   onTap: () {
              //     // Handle tap on the ListTile
              //   },
              // ),
              IconButton(
                // style: ButtonStyle(textStyle: TextStyle()),
                tooltip: 'Home',
                icon: Icon(Icons.home),
                onPressed: () {
                  // Handle home button tap
                },
              ),
              IconButton(
                tooltip: 'Favourite',
                icon: Icon(Icons.favorite),
                onPressed: () {
                  // Handle search button tap
                },
              ),
              IconButton(
                tooltip: 'Help',
                icon: Icon(Icons.headset_mic_outlined),
                onPressed: () {
                  // Handle profile button tap
                },
              ),
              IconButton(
                tooltip: 'Profile',
                icon: Icon(Icons.person_2_outlined),
                onPressed: () {
                  // Handle profile button tap
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
