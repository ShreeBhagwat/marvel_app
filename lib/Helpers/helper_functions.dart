import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HelperClass {
  static void naviagteToScreen(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => widget));
  }
}
