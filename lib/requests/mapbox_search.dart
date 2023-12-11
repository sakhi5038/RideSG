// import 'package:dio/dio.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_ride_sg/helpers/dio_exceptions.dart';
// import 'package:flutter_application_ride_sg/main.dart';
// // import 'package:flutter_dotenv/flutter_dotenv.dart';

// String baseUrl = 'https://api.mapbox.com/geocoding/v5/mapbox.places/s.json?proximity=-73.990593%2C40.740121&types=postcode%2Cplace%2Caddress&language=en&access_token=pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ';
// String accessToken = 'pk.eyJ1IjoicHJpeWFkc2wiLCJhIjoiY2xvaWp4emF4MGplbzJpb3c2NnlpNTNxbSJ9.tqdSf59jzLgHqCOa2SXXZQ';
// // dotenv.env['MAPBOX_ACCESS_TOKEN']!;
// String searchType = 'place%2Cpostcode%2Caddress';
// String searchResultsLimit = '5';
// String proximity =
//     '${sharedPreferences.getDouble('longitude')}%2C${sharedPreferences.getDouble('latitude')}';
// String country = 'us';

// Dio _dio = Dio();

// Future getSearchResultsFromQueryUsingMapbox(String query) async {
//   String url =
//       '$baseUrl/$query.json?country=$country&limit=$searchResultsLimit&proximity=$proximity&types=$searchType&access_token=$accessToken';
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