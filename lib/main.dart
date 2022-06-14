import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:marvel_app/Screens/login_screen.dart';

void main() {
  runApp(MarvelApp());
}

class MarvelApp extends StatelessWidget {
  const MarvelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}
