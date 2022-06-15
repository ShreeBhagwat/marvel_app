import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tfriends/Helpers/constant.dart';
import 'package:flutter_tfriends/Services/api_service.dart';

import '../Models/movie_model.dart';
import '../widget/custome_circular_progress_bar.dart';
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
    getMovieData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text('Home'),
      ),
      body: movieData.isNotEmpty
          ? GridView.builder(
              itemCount: movieData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2 / 3,
              ),
              itemBuilder: (contex, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: movieData[index].coverUrl != null
                      ? CachedNetworkImage(
                          imageUrl: movieData[index].coverUrl.toString(),
                          fit: BoxFit.cover,
                          placeholder: (contex, url) =>
                              CustomeCircularProgressBar(),
                        )
                      : Image.asset(
                          'images/marvel.png',
                          fit: BoxFit.cover,
                        ),
                );
              })
          : Center(
              child: CustomeCircularProgressBar(),
            ),
    );
  }

  void getMovieData() async {
    movieData = await ApiService.getMarvelData();
    setState(() {});
  }
}
