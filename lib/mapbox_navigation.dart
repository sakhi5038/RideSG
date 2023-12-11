import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/rate_ride.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_mapbox_navigation/flutter_mapbox_navigation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
// import 'package:flutter_application_ride_sg/helpers/shred_prefs.dart';
// import 'package:mapbox_gl/mapbox_gl.dart';

class TurnByTurn extends StatefulWidget {
  const TurnByTurn({Key? key}) : super(key: key);

  @override
  State<TurnByTurn> createState() => _TurnByTurnState();
}

class _TurnByTurnState extends State<TurnByTurn> {
  // Waypoints to mark trip start and end
  LatLng source = LatLng(37.7749, -122.4194);
  LatLng destination = LatLng(37.7749, -122.5194);
  MapController _mapController = MapController();
  MapBoxNavigation _directions = MapBoxNavigation();
  // LatLng destination = getTripLatLngFromSharedPrefs('destination');
  late WayPoint sourceWaypoint, destinationWaypoint;
  var wayPoints = <WayPoint>[];

  // double distanceRemaining = 0.0;
  // double durationRemaining = 0.0;

  // Config variables for Mapbox Navigation
  MapBoxNavigation? directions;
  LatLng _selectedLocation = LatLng(0, 0);
  LatLng _currentLocation = LatLng(0, 0);
  List<Marker> _markers = [];
  late MapBoxOptions options;
  late double distanceRemaining, durationRemaining;
  late MapBoxNavigationViewController _controller;
  final bool isMultipleStop = false;
  String instruction = "";
  bool arrived = false;
  bool routeBuilt = false;
  bool isNavigating = false;

    double _currentZoom = 12.0;


  @override
  void initState() {
    super.initState();
    // _directions = MapBoxNavigation(initialize());
    initialize();
    _getCurrentLocation();
  }

  Future<void> initialize() async {
    if (!mounted) return;

    // Setup directions and options
    // _directions =
    options = MapBoxOptions(
      initialLatitude: _currentLocation.latitude,
      initialLongitude: _currentLocation.longitude,
      tilt: 0.0,
      bearing: 0.0,
      enableRefresh: false,
      alternatives: true,
      allowsUTurnAtWayPoints: true,
      mapStyleUrlDay: 'https://api.mapbox.com/styles/v1/priyadsl/clpgr7s2z00hm01p9hiscftvs.html?title=view&access_token=pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ&zoomwheel=true&fresh=true#6.11/3.034/103.381',
      mapStyleUrlNight: 'https://api.mapbox.com/styles/v1/priyadsl/clpgr7s2z00hm01p9hiscftvs.html?title=view&access_token=pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ&zoomwheel=true&fresh=true#6.11/3.034/103.381',

        zoom: 18.0,
        voiceInstructionsEnabled: true,
        bannerInstructionsEnabled: true,
        mode: MapBoxNavigationMode.drivingWithTraffic,
        isOptimized: true,
        units: VoiceUnits.imperial,
        simulateRoute: true,
        language: "en");
        
        _directions.setDefaultOptions(options);

    // Configure waypoints
    sourceWaypoint = WayPoint(
        name: "Source", latitude: source.latitude, longitude: source.longitude);
    destinationWaypoint = WayPoint(
        name: "Destination",
        latitude: destination.latitude,
        longitude: destination.longitude);
    wayPoints.add(sourceWaypoint);
    wayPoints.add(destinationWaypoint);

    // Start the trip
    await directions?.startNavigation(wayPoints: wayPoints, options: options);
  }
   Future<void> _getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high,
      );

      setState(() {
        _selectedLocation = LatLng(
          position.latitude,
          position.longitude,
        );

        _markers = [
          Marker(
            width: 40,
            height: 40,
            point: _selectedLocation ,
            child:  Icon(Icons.location_on, color: const Color.fromRGBO(244, 67, 54, 1)),
          ),
        ];
      });

      _mapController.move(_selectedLocation , 12.0);
    } catch (e) {
      print("Error: $e");
    }
  }
  @override
  void dispose() {
    super.dispose();
    _directions.finishNavigation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
       children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 100),
            child: FlutterMap(
              mapController: _mapController,
              options:  MapOptions(
                  initialCenter:  _selectedLocation, 
                  initialZoom: _currentZoom, 
                  ),
                  // 21.0286895, 105.8556133
              children: [
                 TileLayer(
                  maxZoom: 20.0,
                  urlTemplate:
                      "https://api.mapbox.com/styles/v1/priyadsl/cloik47dn001001nz79zec04w/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ",
                      // "https://api.mapbox.com/styles/v1/priyadsl/clp9sug8t003801pa424n6xfd/wmts?access_token=pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ",
                  additionalOptions: const {
                    'accessToken':
                        'pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ',
                    'id': 'mapbox.mapbox-terrain-v2',
                  },
                ),
                 MarkerLayer(
                  markers:  _markers   
                ),
                // MarkerLayer(markers: [
                //   Marker(
                //     point: origin, 
                //     height: 40,
                //     width: 40,
                //     child: Container(
                //   child: Icon(
                //     Icons.location_on,
                //     color: Colors.blue,
                //     size: 40.0,
                //   ),
                // ),),
                // Marker(
                //     point: destination, 
                //     height: 40,
                //     width: 40,
                //     child: Container(
                //   child: Icon(
                //     Icons.location_on,
                //     color: Colors.blue,
                //     size: 40.0,
                //   ),
                // ),),
                // ])
              ],
            ),
          ),
           Padding(
             padding: const EdgeInsets.only(top: 550, left: 330),
             child: Container(
              height: 115,
              width: 50,
              color: Colors.white,
               child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {
                      _onRouteEvent(e);
                    },
                  ),
                  const Divider(
                    height: 15,
                    // indent: 0.4,
                    // endIndent: 1.0,
                  ),
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () {
                      _directions.startNavigation(wayPoints: wayPoints);
                    },
                  ),
                ],
                       ),
             ),
           ),
        ]
      ),
    );
  }
  
  // MapBoxNavigation.instance.registerRouteEventListener(_onRouteEvent);
  Future<void> _onRouteEvent(e) async {
    
         MapBoxNavigation.instance.registerRouteEventListener(_onRouteEvent);

    distanceRemaining = await _directions.getDistanceRemaining() as double;
    durationRemaining = await _directions.getDurationRemaining() as double;

    switch (e.eventType) {
      case MapBoxEvent.progress_change:
        var progressEvent = e.data as RouteProgressEvent;
        arrived = progressEvent.arrived!;
        if (progressEvent.currentStepInstruction != null) {
          instruction = progressEvent.currentStepInstruction!;
        }
        break;
      case MapBoxEvent.route_building:
      case MapBoxEvent.route_built:
        routeBuilt = true;
        break;
      case MapBoxEvent.route_build_failed:
        routeBuilt = false;
        break;
      case MapBoxEvent.navigation_running:
        isNavigating = true;
        break;
      case MapBoxEvent.on_arrival:
        arrived = true;
        if (!isMultipleStop) {
          await Future.delayed(const Duration(seconds: 3));
          await _controller.finishNavigation();
        } else {}
        break;
      case MapBoxEvent.navigation_finished:
      case MapBoxEvent.navigation_cancelled:
        routeBuilt = false;
        isNavigating = false;
        break;
      default:
        break;
    }
    //refresh UI
    setState(() {});
  }
}