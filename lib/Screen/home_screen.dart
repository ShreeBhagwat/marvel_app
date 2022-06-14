import 'package:flutter/material.dart';
import 'package:flutter_tfriends/Helpers/constant.dart';
import 'package:flutter_tfriends/Services/api_service.dart';

import '../Models/movie_model.dart';
import '../widget/primary_button.dart';

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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Home'),
      ),
      body: Center(
        child: Container(
          child: PrimaryButton(
            callback: () {
              getMovieData();
            },
            text: 'Get data',
          ),
        ),
      ),
    );
  }

  void getMovieData() async {
    movieData = await ApiService.getMarvelData();
    print(movieData.length);
  }
}
