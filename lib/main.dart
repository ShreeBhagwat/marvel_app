import 'package:flutter/material.dart';
import 'package:flutter_tfriends/screen/login_screen.dart';

void main(List<String> args) {
  runApp(MarwelApp());
}

class MarwelApp extends StatelessWidget {
  const MarwelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
