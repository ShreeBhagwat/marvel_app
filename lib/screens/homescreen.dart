
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Helper/constant.dart';
import 'package:marvel_app/Models/moviemodel.dart';
import 'package:marvel_app/Services/apiservice.dart';
import 'package:marvel_app/wedgets/CustomAppBar.dart';
import 'package:marvel_app/wedgets/CustomCircularProgressIndicator.dart';
import 'package:marvel_app/wedgets/PrimaryButton.dart';
import 'package:provider/provider.dart';

import '../Helper/helperfunction.dart';
import 'detailscreen.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

 List<MovieData> movieData = [];
  
  //   Provider.of<MovieManager>(context, listen: false).getMovieData();
    
  @override
  Widget build(BuildContext context) {
    movieData = Provider.of<MovieManager>(context).movieList;

    return Scaffold(
        appBar: CustomAppBar(title: 'title',
        showActionButton: true,
        showBackButton: true,),
        backgroundColor: backgroundColor,
        body: movieData.isNotEmpty
            ? GridView.builder(
                itemCount: movieData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 2 / 3),
                itemBuilder: (BuildContext context, int index) {

                  return InkWell(
                    onTap: (){
                      Provider.of<MovieManager>(context).setSelectIndex(index);
                      //HelperClass.navigationToScreen(context, DetailScreen(movieData: movieData[index]));
                      HelperClass.navigationToScreen(context, DetailScreen());
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: CachedNetworkImage(
                          imageUrl: movieData[index].coverUrl.toString(),
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              CustomCircularProgressBar()),
                    ),
                  );
                })
            : Center(
                child: CustomCircularProgressBar(),
              ));
  }
  }
    
 