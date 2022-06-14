import 'package:flutter/material.dart';
import 'package:marvel_app/helpers/constant.dart';

class custom_text_field extends StatelessWidget {
  const custom_text_field({
    Key? key,
    required this.emailController,
    required this.icon,
    required this.hintText,
    this.isobscure = false,
  }) : super(key: key);

  final TextEditingController emailController;
  final IconData icon;
  final String hintText;
  final bool isobscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isobscure,
      controller: emailController,
      cursorColor: Colors.grey,
      style: titleTextStyle.copyWith(fontSize: 18),
      decoration: InputDecoration(
        border: const OutlineInputBorder(
          borderSide: BorderSide.none,
        ),
        prefixIcon: Icon(
          icon,
          color: Colors.grey,
        ),
        hintText: hintText,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 18),
      ),
    );
  }
}
