import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/Helpers/constant.dart';
import 'package:marvel_app/Models/movie_model.dart';
import 'package:marvel_app/Services/api_service.dart';
import 'package:marvel_app/Widgets/custom_circular_progressbar.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: movieData.isNotEmpty
          ? GridView.builder(
              itemCount: movieData.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 3),
              itemBuilder: (BuildContext contex, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(
                    imageUrl: movieData[index].coverUrl.toString(),
                    fit: BoxFit.cover,
                    placeholder: (contex, url) => CustomCircularProgressBar(),
                  ),
                );
              },
            )
          : Center(
              child: CustomCircularProgressBar(),
            ),
    );
  }

  Future<void> getMovieData() async {
    movieData = await ApiService.getMarvelData();
    print(movieData[0].coverUrl);
    setState(() {});
  }
}
