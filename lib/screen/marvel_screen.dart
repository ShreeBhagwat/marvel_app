import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Models/movie_model.dart';
import 'package:marvel_app/Widgets/primary_button.dart';

import '../Services/api_service.dart';

class MarvelAppScreen extends StatefulWidget {
  const MarvelAppScreen({Key? key}) : super(key: key);

  @override
  State<MarvelAppScreen> createState() => _MarvelAppScreenState();
}

class _MarvelAppScreenState extends State<MarvelAppScreen> {
  List<MovieData> movieData = [];

  @override
  void initState() {
    super.initState();
    // ApiService.getMarvelData();
  }

  void getMovieData() async {
    movieData = await ApiService.getMarvelData();
    print(movieData.length);
    print(movieData.first.title);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Heyyyy'),
      ),
      body: Center(
        child: primary_button(
            title: "Get Data",
            onPressed: () {
              // ApiService.getMarvelData();
              getMovieData();
            }),
      ),
    );
  }
}
