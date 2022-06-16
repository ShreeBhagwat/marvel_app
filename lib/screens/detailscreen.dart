import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/Helper/constant.dart';
import 'package:marvel_app/screens/cartscreen.dart';
import 'package:marvel_app/wedgets/CustomAppBar.dart';
import 'package:marvel_app/wedgets/PrimaryButton.dart';
import 'package:provider/provider.dart';

import '../Helper/helperfunction.dart';
import '../Models/moviemodel.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen({Key? key,}) : super(key: key);

//   final MovieData movieData;
//   @override
//   State<DetailScreen> createState() => _DetailScreenState();
// }

//class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    MovieData movieData = Provider.of<MovieManager>(context).movieList[Provider.of<MovieManager>(context).selectedMovie];
    return Scaffold(
        backgroundColor: backgroundColor,
        //appBar: CustomAppBar(title: title),
        appBar: CustomAppBar(title: movieData.title.toString(),
        showActionButton: true,
        showBackButton: true,),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Hero(
                tag: movieData.title.toString(),
                child: CachedNetworkImage(
                    imageUrl: movieData.coverUrl.toString(),
                    width: double.maxFinite,
                    fit: BoxFit.fitWidth),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  movieData.overview.toString(),
                  style: titleTextStyle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PrimaryButton(
                  title: 'Add to Cart',
                  onPressed: () {
                    if(cardItems.contains(movieData))
                      {
                        
                      }else{
                          cardItems.add(movieData);
                      }
                  },
                ),
              )
            ],
          ),
        ));
  }
}
