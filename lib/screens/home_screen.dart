import 'package:flutter/material.dart';
import 'package:marvel_app/helpers/constant.dart';
import 'package:marvel_app/models/movie_model.dart';
import 'package:marvel_app/widget/custom_text_button.dart';
import 'package:marvel_app/widget/custom_text_field_widget.dart';

import '../services/api_service.dart';
import '../widget/primary_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<MovieData> moviedata = [];

  void GetMoviesData() async {
    moviedata = await ApiService.GetMarvalData();
    print(moviedata.length);
  }

  @override
  void initState() {
    super.initState();
    //ApiService.GetMarvalData();
    // GetMoviesData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: PrimerButton(
          title: 'Get Data',
          onPressed: () {
            GetMoviesData();
          },
        ),
      ),
    );
  }
}
