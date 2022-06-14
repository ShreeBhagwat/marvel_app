import 'package:flutter/material.dart';

class HelperClass {

  static navigationToScreen(BuildContext context, Widget widget) {

    Navigator.push(context, MaterialPageRoute(builder: (_) => widget));

  }

}