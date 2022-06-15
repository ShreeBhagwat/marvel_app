import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'LoginPage.dart';

void main() => runApp(RootScreen());

class RootScreen extends StatelessWidget {
  const RootScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => MaterialApp(
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
      );
}
