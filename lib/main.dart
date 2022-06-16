import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/Models/moviemodel.dart';
import 'package:marvel_app/screens/marvelappscreen.dart';
import 'package:provider/provider.dart';

void main() { 
  
  runApp(const MarvelApp());
}

class MarvelApp extends StatelessWidget {
  const MarvelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_) => MovieManager())
    ],
     child:MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MarvelAppScreen(),
    )
    );  
  }
}
