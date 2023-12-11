import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_ride_sg/mapbox_navigation.dart';
import 'package:flutter_application_ride_sg/turn_by_turn.dart';
import 'package:flutter_application_ride_sg/utils/colors.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:latlong2/latlong.dart' ;
import 'package:shared_preferences/shared_preferences.dart';

class DiliveryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DiliveryState();
}
class DiliveryState extends State<DiliveryPage> {
  // late mapbox_gl.CameraPosition _initialCameraPosition;

  LatLng startPoint = LatLng(37.7749, -122.4194);
  LatLng endPoint = LatLng(37.7749, -122.5194);
 // Replace with your destination coordinates
  MapController _mapController = MapController();
  // MapboxMapController? _mapboxMapController;
  TextEditingController _searchController = TextEditingController();
  LatLng _selectedLocation = LatLng(0, 0);
  LatLng _currentLocation = LatLng(0, 0);
  List<Marker> _markers = [];
  List<Polyline> polylinePoints = [];
  List<String> _searchHistory = [];
  double _distance = 0.0;
  List<String> _searchSuggestions = [
    'No results found'
  ];
  // Position? _currentPosition;
  double _currentZoom = 12.0;
  void _zoomIn() {
    setState(() {
      _currentZoom += 1.0;
      _mapController.move(_selectedLocation, _currentZoom);
    });
  }

  void _zoomOut() {
    setState(() {
      _currentZoom -= 1.0;
      _mapController.move(_selectedLocation  , _currentZoom);
    });
  }
  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
    loadSearchHistory().then((history) {
      setState(() {
        _searchHistory = history;
      });
    });
  }
  Future<List<String>> loadSearchHistory() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // Read the search history from preferences
  List<String>? searchHistory = prefs.getStringList('searchHistory');

  // If there's no search history, initialize an empty list
  return searchHistory ?? [];
}
Future<void> saveSearchHistory(List<String> searchHistory) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();

  // Save the search history to preferences
  await prefs.setStringList('searchHistory', searchHistory);
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
  
  Future<List<String>> searchPlaces(String query) async {
  final apiKey = 'pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ'; // Replace with your Mapbox access token
  final endpoint = 'https://api.mapbox.com/geocoding/v5/mapbox.places/$query.json?access_token=$apiKey';

  try {
    final response = await http.get(Uri.parse(endpoint));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<dynamic> features = data['features'];

      if (features.isNotEmpty) {
        // Update the UI with search suggestions
        List searchResults = features.map((feature) => feature['place_name']).toList();

        // Show suggestions in your UI, e.g., update a dropdown or list view
        // with the search results as the user types

        // Extract latitude and longitude from the first result
        double latitude = features[0]['center'][1];
        double longitude = features[0]['center'][0];

        // Set the selected location based on user input
        setState(() {
          _selectedLocation = LatLng(latitude, longitude);
          _markers = [Marker(width: 40, height: 40, point: _selectedLocation!, child:   const Icon(Icons.location_on, color: Colors.red))];
        });

        // Move the map camera to the selected location
        _mapController.move(_selectedLocation, 12.0);
      } else {
        // Handle case when no results are found
        print('No results found for the given query.');
      }
    } else {
      // Handle other HTTP status codes
      print('Failed to load places. Status Code: ${response.statusCode}');
    }
  } catch (error) {
    // Handle errors
    print('Error: $error');
  }

  // You may return search results if needed
  return [];
} 
 void updateSearchResults(String query) async {
    if (query.isNotEmpty) {
      try {
        final apiKey = 'pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ';
        final endpoint = 'https://api.mapbox.com/geocoding/v5/mapbox.places/$query.json?access_token=$apiKey';

        final response = await http.get(Uri.parse(endpoint));

        if (response.statusCode == 200) {
          final data = json.decode(response.body);
          List<dynamic> features = data['features'];
          setState(() {
            // Update the suggestions as the user types
            _searchSuggestions = [
              ..._searchHistory, // Add search history
              ...features.map((feature) => feature['place_name']).toList(), // Add real-time suggestions
            ];
            _markers = features.map((feature) {
              return Marker(
                width: 40,
                height: 40,
                point: LatLng(feature['center'][1], feature['center'][0]),
                child:    Icon(Icons.location_on, color: Colors.red),
              );
            }).toList();
          });
        } else {
          print('Failed to load places. Status Code: ${response.statusCode}');
        }
      } catch (e) {
        print('Error searching places: $e');
      }
    } else {
      setState(() {
        // Clear the suggestions if the query is empty
        // _markers = [];
        _searchSuggestions = _searchHistory;
      });
    }
  }
   Future<List<String>> onSuggestionSelected(String query) async{
    // // Handle the selected suggestion (e.g., perform search, update UI)
    // print('Selected: $suggestion');
    // // Add the selected suggestion to search history
    // _updateSearchHistory(suggestion);
     final apiKey = 'pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ'; // Replace with your Mapbox access token
  final endpoint = 'https://api.mapbox.com/geocoding/v5/mapbox.places/$query.json?access_token=$apiKey';

  try {
    final response = await http.get(Uri.parse(endpoint));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      List<dynamic> features = data['features'];

      if (features.isNotEmpty) {
        // Update the UI with search suggestions
        List searchResults = features.map((feature) => feature['place_name']).toList();

        // Show suggestions in your UI, e.g., update a dropdown or list view
        // with the search results as the user types

        // Extract latitude and longitude from the first result
        double latitude = features[0]['center'][1];
        double longitude = features[0]['center'][0];

        // Set the selected location based on user input
        setState(() {
          _selectedLocation = LatLng(latitude, longitude);
          _markers = [Marker(width: 40, height: 40, point: _selectedLocation!, child:   Icon(Icons.location_on, color: Colors.red))];
        });

        // Move the map camera to the selected location
        _mapController.move(_selectedLocation, 12.0);
      } else {
        // Handle case when no results are found
        print('No results found for the given query.');
      }
    } else {
      // Handle other HTTP status codes
      print('Failed to load places. Status Code: ${response.statusCode}');
    }
  } catch (error) {
    // Handle errors
    print('Error: $error');
  }

  // You may return search results if needed
  return [];
  }

  void _updateSearchHistory(String query) {
    setState(() {
      // Add the query to search history
      _searchHistory.insert(0, query);
      // Save search history to storage (e.g., SharedPreferences)
      // saveSearchHistory(_searchHistory);
    });
  }
  //  Future<List<String>> yourFunctionToGetSuggestions(Color color) async {
  //   // Example: Return a list of hardcoded suggestions
  //   return ;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
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
                      _zoomIn();
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
                      _zoomOut();
                    },
                  ),
                ],
                       ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.only(top: 30, left: 10),
             child: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Icon(Icons.arrow_back, color: Colors.white,)),
           ),
            Padding(
              padding: const EdgeInsets.only(left: 30,top: 45 ),
              child: 
              TypeAheadField(
                        suggestionsBoxDecoration: SuggestionsBoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: AppColors.primaryColorTwo,
                        ),
                        textFieldConfiguration: TextFieldConfiguration(
              style: TextStyle(color: Colors.white),
              controller: _searchController,
              onChanged: (query) {
                updateSearchResults(query);
              },
              decoration: InputDecoration(
                hintStyle: TextStyle(
                  color: Colors.white
                ),
                border: InputBorder.none,
                hintText: 'Search...',
              ),
                        ),
                        suggestionsCallback: (pattern) async {
              // Implement your logic to fetch suggestions based on the pattern
              // Return a list of suggestions
              return _searchSuggestions.where((suggestion) =>
                  suggestion.toLowerCase().contains(pattern.toLowerCase()));
                        },
                        itemBuilder: (context, suggestion) {
              // Build your suggestion widget
              return ListTile(
                // minLeadingWidth: 80,
                style: ListTileStyle.drawer,
                focusColor: AppColors.primaryColorTwo,
                // onTap: ,
                leading: Icon(Icons.gps_fixed, color: Colors.white,),
                title: Text(suggestion, style: TextStyle(color: Colors.white)),
              );
                        },
                        noItemsFoundBuilder: (context) {
               return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('No results found', style: TextStyle(color: Colors.white),),
              );
                        },
                        onSuggestionSelected: (suggestion) {
              // Handle the selected suggestion
                         onSuggestionSelected(suggestion);
                        },
                    ),
            ),
             Padding(
               padding: const EdgeInsets.only(left: 340, top: 45),
               child: IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () async {
                await searchPlaces(_searchController.text);
                     },
                   ),
             ),
          
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        Get.to(()=> TurnByTurn());
      },
      child: Icon(Icons.navigation),
      ),
      );
  }
  }


