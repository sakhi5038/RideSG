// import 'package:flutter/material.dart';
// import 'package:flutter_application_ride_sg/helpers/mapbox_handler.dart';
// import 'package:flutter_application_ride_sg/helpers/shred_prefs.dart';
// import 'package:flutter_application_ride_sg/review_ride.dart';
// import 'package:mapbox_gl/mapbox_gl.dart';

// Widget reviewRideFaButton(BuildContext context) {
//   return FloatingActionButton.extended(
//       icon: const Icon(Icons.local_taxi),
//       onPressed: () async {
//         LatLng sourceLatLng = getTripLatLngFromSharedPrefs('source');
//         LatLng destinationLatLng = getTripLatLngFromSharedPrefs('destination');
//         Map modifiedResponse =
//             await getDirectionsAPIResponse(sourceLatLng, destinationLatLng);

//         Navigator.push(
//             context,
//             MaterialPageRoute(
//                 builder: (_) =>
//                     ReviewRide(modifiedResponse: modifiedResponse)));
//       },
//       label: const Text('Review Ride'));
// }