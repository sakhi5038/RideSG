// import 'package:flutter/material.dart';
// import 'package:flutter_application_ride_sg/rate_ride.dart';
// import 'package:flutter_map/flutter_map.dart';
// import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';
// import 'package:geolocator/geolocator.dart';
// import 'package:latlong2/latlong.dart';
// // import 'package:flutter_application_ride_sg/helpers/shred_prefs.dart';
// // import 'package:mapbox_gl/mapbox_gl.dart';

// class TurnByTurn extends StatefulWidget {
//   const TurnByTurn({Key? key}) : super(key: key);

//   @override
//   State<TurnByTurn> createState() => _TurnByTurnState();
// }

// class _TurnByTurnState extends State<TurnByTurn> {
//   // Waypoints to mark trip start and end
//   LatLng source = LatLng(37.7749, -122.4194);
//   LatLng destination = LatLng(37.7749, -122.5194);
//   MapController _mapController = MapController();
//   late MapBoxNavigation _directions;
//   // LatLng destination = getTripLatLngFromSharedPrefs('destination');
//   late WayPoint sourceWaypoint, destinationWaypoint;
//   var wayPoints = <WayPoint>[];

//   // double distanceRemaining = 0.0;
//   // double durationRemaining = 0.0;

//   // Config variables for Mapbox Navigation
//   MapBoxNavigation? directions;
//   LatLng _selectedLocation = LatLng(0, 0);
//   LatLng _currentLocation = LatLng(0, 0);
//   List<Marker> _markers = [];
//   late MapBoxOptions _options;
//   late double distanceRemaining, durationRemaining;
//   late MapBoxNavigationViewController _controller;
//   final bool isMultipleStop = false;
//   String instruction = "";
//   bool arrived = false;
//   bool routeBuilt = false;
//   bool isNavigating = false;

//   @override
//   void initState() {
//     super.initState();
//     initialize();
//   }

//   Future<void> initialize() async {
//     if (!mounted) return;

//     // Setup directions and options
//     // _directions =
//     _options = MapBoxOptions(
//         zoom: 18.0,
//         voiceInstructionsEnabled: true,
//         bannerInstructionsEnabled: true,
//         mode: MapBoxNavigationMode.drivingWithTraffic,
//         isOptimized: true,
//         units: VoiceUnits.metric,
//         simulateRoute: true,
//         language: "en");

//     // Configure waypoints
//     sourceWaypoint = WayPoint(
//         name: "Source", latitude: source.latitude, longitude: source.longitude);
//     destinationWaypoint = WayPoint(
//         name: "Destination",
//         latitude: destination.latitude,
//         longitude: destination.longitude);
//     wayPoints.add(sourceWaypoint);
//     wayPoints.add(destinationWaypoint);

//     // Start the trip
//     await directions?.startNavigation(wayPoints: wayPoints, options: _options);
//   }
//    Future<void> _getCurrentLocation() async {
//     try {
//       Position position = await Geolocator.getCurrentPosition(
//         desiredAccuracy: LocationAccuracy.high,
//       );

//       setState(() {
//         _selectedLocation = LatLng(
//           position.latitude,
//           position.longitude,
//         );

//         _markers = [
//           Marker(
//             width: 40,
//             height: 40,
//             point: _selectedLocation ,
//             child:  Icon(Icons.location_on, color: const Color.fromRGBO(244, 67, 54, 1)),
//           ),
//         ];
//       });

//       _mapController.move(_selectedLocation , 12.0);
//     } catch (e) {
//       print("Error: $e");
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return const RateRide();
//   }
  
//   // MapBoxNavigation.instance.registerRouteEventListener(_onRouteEvent);
//   Future<void> _onRouteEvent(e) async {
    
//          MapBoxNavigation.instance.registerRouteEventListener(_onRouteEvent);

//     distanceRemaining = await _directions.getDistanceRemaining() as double;
//     durationRemaining = await _directions.getDurationRemaining() as double;

//     switch (e.eventType) {
//       case MapBoxEvent.progress_change:
//         var progressEvent = e.data as RouteProgressEvent;
//         arrived = progressEvent.arrived!;
//         if (progressEvent.currentStepInstruction != null) {
//           instruction = progressEvent.currentStepInstruction!;
//         }
//         break;
//       case MapBoxEvent.route_building:
//       case MapBoxEvent.route_built:
//         routeBuilt = true;
//         break;
//       case MapBoxEvent.route_build_failed:
//         routeBuilt = false;
//         break;
//       case MapBoxEvent.navigation_running:
//         isNavigating = true;
//         break;
//       case MapBoxEvent.on_arrival:
//         arrived = true;
//         if (!isMultipleStop) {
//           await Future.delayed(const Duration(seconds: 3));
//           await _controller.finishNavigation();
//         } else {}
//         break;
//       case MapBoxEvent.navigation_finished:
//       case MapBoxEvent.navigation_cancelled:
//         routeBuilt = false;
//         isNavigating = false;
//         break;
//       default:
//         break;
//     }
//     //refresh UI
//     setState(() {});
//   }
// }