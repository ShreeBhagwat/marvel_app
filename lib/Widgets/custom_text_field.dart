import 'package:flutter/material.dart';
import 'package:marvel_app/Helpers/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.icon,
    required this.hintText,
    this.isObscure = false,
    required this.controller,
  }) : super(key: key);

  final IconData icon;
  final String hintText;
  final bool isObscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      cursorColor: Colors.grey,
      style: titleTextStyle.copyWith(fontSize: 20),
      decoration: InputDecoration(
          border: const OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
          hintText: hintText,
          hintStyle: subtitleTextStyle),
    );
  }
}
