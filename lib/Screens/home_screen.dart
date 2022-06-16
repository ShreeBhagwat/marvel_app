import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Helpers/constant.dart';
import 'package:marvel_app/Helpers/helper_functions.dart';
import 'package:marvel_app/Models/movie_model.dart';
import 'package:marvel_app/Screens/detail_screen.dart';
import 'package:marvel_app/Services/api_service.dart';
import 'package:marvel_app/Widgets/CustomAppBar.dart';
import 'package:marvel_app/Widgets/custom_circular_progress_indicator.dart';
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
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          showActionButton: true,
          showBackButton: false,
          title: 'MCU App',
        ),
        backgroundColor: backgroundColor,
        body: movieData.isNotEmpty
            ? GridView.builder(
                itemCount: movieData.length,
                gridDelegate:
                    // const SliverGridDelegateWithFixedCrossAxisCount(
                    //   crossAxisCount: 2,
                    //   crossAxisSpacing: 10,
                    //   mainAxisSpacing: 10,
                    //   childAspectRatio: 2 / 3,
                    // ),
                    SliverGridDelegateWithMaxCrossAxisExtent(
                  maxCrossAxisExtent: 200,
                  childAspectRatio: 2 / 3,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      HelperClass.navigateToScreen(
                          context, DetailScreen(movieData: movieData[index]));
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Hero(
                        tag: movieData[index].id.toString(),
                        child: CachedNetworkImage(
                          imageUrl: movieData[index].coverUrl.toString(),
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              CustomCircularProgressBar(),
                        ),
                      ),
                    ),
                  );
                })
            : Center(child: CustomCircularProgressBar()));
  }
}
