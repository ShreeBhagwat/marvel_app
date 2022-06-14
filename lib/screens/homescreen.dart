
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Helper/constant.dart';
import 'package:marvel_app/Models/moviemodel.dart';
import 'package:marvel_app/Services/apiservice.dart';
import 'package:marvel_app/wedgets/PrimaryButton.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}


class _HomeScreenState extends State<HomeScreen> {
 List<MovieData> movieData = [];
  @override
  void initState(){
    super.initState();
    //ApiService.getMarvelData();
  }
  void getMovieData() async{
    movieData = await ApiService.getMarvelData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: backgroundColor,
      body: Center(
        child: PrimaryButton(
          title: 'get Data',
           onpressed: (){
             getMovieData();
             print(movieData.length);
           },
          ),
      ),

    );
    
  }
}