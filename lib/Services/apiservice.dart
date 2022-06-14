import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:marvel_app/Models/movie_model.dart';

class ApiService {
  static Future<List<MovieData>> getMarvelData() async {
    String api = 'https://mcuapi.herokuapp.com/api/v1/movies';
    Uri apiUri = Uri.parse(api);
    var response = await http.get(apiUri);
    // http.get(apiUri).then((response)
    {
      // if (response.statusCode == 200) {
      print(response.body);
      var body = response.body;
      var decodeobject = jsonDecode(body);
      return MovieModel.fromJson(decodeobject).data!;
      // print(decodeobject['data'][0]['title']);
      // } else {
      //   print('Response Failed ${response.statusCode}');
      // }
    }
    ;
    // return [];
  }
}
