

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/screens/marvelappscreen.dart';

void main() { 
  
  runApp(const MarvelApp());
}

class MarvelApp extends StatelessWidget {
  const MarvelApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MarvelAppScreen(),
    );  

}
