import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Services/apiservice.dart';

import '../Models/movie_model.dart';
import '../Widgets/FCircularProgressBar.dart';

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
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Home Screen'),
        ),
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
                      placeholder: (contex, url) => FCircularProgressBar(),
                    ),
                  );
                  // Container(
                  //   child: Text(index.toString()),
                  //   color: Colors.white,
                  // );
                })
            : Center(child: FCircularProgressBar()));
  }
}
