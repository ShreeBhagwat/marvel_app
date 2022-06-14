import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:marvel_app/models/movie_model.dart';

class ApiService {
  static Future<List<MovieData>> GetMarvalData() async {
    String api = 'https://mcuapi.herokuapp.com/api/v1/movies';
    Uri apiUrl = Uri.parse(api);
    var response = await http.get(apiUrl);

    var body = response.body;
    var decodeObject = jsonDecode(body);
    return MovieModel.fromJson(decodeObject).data!;
  }
}
