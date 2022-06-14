import 'package:flutter/material.dart';

import '../Helpers/constant.dart';

class CutomeTextFiled extends StatelessWidget {
  CutomeTextFiled({
    Key? key,
    required this.controller,
    required this.hint,
    this.isObsure = false,
    required this.icon,
  }) : super(key: key);

  final TextEditingController controller;
  final String hint;
  final bool isObsure;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      cursorColor: Colors.grey,
      style: titleTextStyle.copyWith(
        fontSize: 20,
      ),
      obscureText: isObsure,
      decoration: InputDecoration(
        hintText: hint,
        hintStyle: subtitleTextStyle,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
      ),
    );
  }
}
