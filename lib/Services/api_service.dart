import 'dart:convert';

import 'package:http/http.dart' as http;

import '../Models/movie_model.dart';

class ApiService {
  // static void getMarvelData() {
  //   String api = "https://mcuapi.herokuapp.com/api/v1/movies";
  //   Uri appUri = Uri.parse(api);
  //   http.get(appUri).then((response) {
  //     if (response.statusCode == 200) {
  //       // print(response.body);

  //       var body = response.body;
  //       var decodedData = jsonDecode(body);
  //       print(decodedData['data'][0]['title']);
  //       MovieModel.fromJson(decodedData).data;

  //       // print(MovieModel);
  //     } else {
  //       print('Failed to get data with response code ${response.statusCode}');
  //     }
  //   }).catchError((e) {
  //     print(e.toString());
  //   });
  // }

  static Future<List<MovieData>> getMarvelData() async {
    String api = "https://mcuapi.herokuapp.com/api/v1/movies";
    Uri appUri = Uri.parse(api);
    var response = await http.get(appUri);
    var body = response.body;
    var decodedObject = jsonDecode(body);
    return MovieModel.fromJson(decodedObject).data!;
  }
}
