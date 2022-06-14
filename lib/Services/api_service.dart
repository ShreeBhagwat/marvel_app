import 'dart:convert';

import 'package:flutter_tfriends/Models/movie_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<MovieData>> getMarvelData() async {
    print('API service function running');
    String url = 'https://mcuapi.herokuapp.com/api/v1/movies';
    Uri uri = Uri.parse(url);

    var response = await http.get(uri);
    var body = response.body;
    var decodedObject = jsonDecode(body);
    return MovieModel.fromJson(decodedObject).data!;
  }
}
