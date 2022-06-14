import 'package:flutter/material.dart';
import 'package:marvel_app/screens/loginscreen.dart';

void main() {
  runApp(MarvelApp());
}

class MarvelApp extends StatelessWidget {
  const MarvelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
