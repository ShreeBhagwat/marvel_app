import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Helpers/constant.dart';
import 'package:marvel_app/Models/movie_model.dart';
import 'package:marvel_app/Services/api_service.dart';
import 'package:marvel_app/Widgets/primary_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MovieData> movieData = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getMovieData();
  }

  void getMovieData() async {
    movieData = await ApiService.getMarvelData();
    print(movieData.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
          child: PrimaryButton(
        onPressed: () {
          getMovieData();
        },
        title: 'Get Data',
      )),
    );
  }
}
