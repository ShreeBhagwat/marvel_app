import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Services/apiservice.dart';

import '../Models/movie_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MovieData> movieData = [];
  @override
  void initState() {
    super.initState();
    // ApiService.getMarvelData();
    getMovieData();
  }

  void getMovieData() async {
    movieData = await ApiService.getMarvelData();
    print(movieData.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
    );
  }
}
