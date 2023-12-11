// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_ride_sg/helpers/dio_exceptions.dart';
// // import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:mapbox_gl/mapbox_gl.dart';

// String baseUrl = 'https://api.mapbox.com/geocoding/v5/mapbox.places/s.json?proximity=-73.990593%2C40.740121&types=postcode%2Cplace%2Caddress&language=en&access_token=pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ';
// // 'https://api.mapbox.com/geocoding/v5/mapbox.places';
// String accessToken = 'pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ';
// // dotenv.env['MAPBOX_ACCESS_TOKEN']!;

// Dio _dio = Dio();

// Future getReverseGeocodingGivenLatLngUsingMapbox(LatLng latLng) async {
//   String query = '${latLng.longitude},${latLng.latitude}';
//   String url = '$baseUrl/$query.json?access_token=$accessToken';
//   url = Uri.parse(url).toString();
//   print(url);
//   try {
//     _dio.options.contentType = Headers.jsonContentType;
//     final responseData = await _dio.get(url);
//     return responseData.data;
//   } catch (e) {
//     final errorMessage = DioExceptions.fromDioError(e as DioException).toString();
//     debugPrint(errorMessage);
//   }
// }