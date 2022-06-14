import 'package:flutter/material.dart';

class HelperClass {
  static void navigateToScreen(BuildContext context, Widget widget) {
    Navigator.push(context, MaterialPageRoute(builder: (_) => widget));
  }
}
