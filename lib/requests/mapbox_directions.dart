// // import 'dart:html';

// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_ride_sg/helpers/dio_exceptions.dart';
// // import 'package:flutter_dotenv/flutter_dotenv.dart';
// import 'package:mapbox_gl/mapbox_gl.dart';

// String baseUrl = 
// 'https://api.mapbox.com/directions/v5/mapbox/driving/-74.779323%2C40.548498%3B-74.751273%2C40.543341?alternatives=false&geometries=geojson&language=en&overview=full&steps=true&access_token=pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ';
// // 'https://api.mapbox.com/directions/v5/mapbox';
// String accessToken = 'pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ';
// String navType = 'driving';

// Dio _dio = Dio();

// Future getCyclingRouteUsingMapbox(LatLng source, LatLng destination) async {
//   String url =
//       '$baseUrl/$navType/${source.longitude},${source.latitude};${destination.longitude},${destination.latitude}?alternatives=true&continue_straight=true&geometries=geojson&language=en&overview=full&steps=true&access_token=$accessToken';
//   try {
//     _dio.options.contentType = Headers.jsonContentType;
//     final responseData = await _dio.get(url);
//     return responseData.data;
//   } catch (e) {
//     final errorMessage = DioExceptions.fromDioError(e as DioException).toString();
//     debugPrint(errorMessage);
//   }
// }