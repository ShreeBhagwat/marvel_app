import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/helpers/constant.dart';
import 'package:marvel_app/helpers/helper_function.dart';
import 'package:marvel_app/models/movie_model.dart';
import 'package:marvel_app/screens/detail_screen.dart';
import 'package:marvel_app/widget/circular_progress_bar.dart';
import 'package:marvel_app/widget/custom_text_button.dart';
import 'package:marvel_app/widget/custom_text_field_widget.dart';
import 'package:marvel_app/widget/custome_app_bar.dart';

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
    setState(() {});
    // print(moviedata[0]);
  }

  @override
  void initState() {
    super.initState();
    GetMoviesData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomeAppBar(
        Title: 'MCU APP',
      ),
      backgroundColor: backgroundColor,
      body: moviedata.isNotEmpty
          ? GridView.builder(
              itemCount: moviedata.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 2 / 3),
              // gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              //     maxCrossAxisExtent: 200,
              //     childAspectRatio: 2 / 3,
              //     crossAxisSpacing: 10,
              //     mainAxisExtent: 10),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    HelperClass.navigateToScreen(
                        context,
                        DetailScreen(
                          movieData: moviedata[index],
                        ));
                  },
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Hero(
                      tag: moviedata[index].id.toString(),
                      child: CachedNetworkImage(
                        imageUrl: moviedata[index].coverUrl.toString(),
                        fit: BoxFit.cover,
                        placeholder: (context, url) => CircularProgressBar(),
                      ),
                    ),
                  ),
                );
              })
          : Center(child: CircularProgressBar()),
    );
  }
}
