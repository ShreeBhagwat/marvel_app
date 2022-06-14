
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helper/constant.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key, required this.icon, required this.hintText, this.isObsecure, required this.controller,
  }) : super(key: key);

final IconData icon;

final String hintText;

final bool? isObsecure;

final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      
      style: titleTextStyle.copyWith(fontSize: 20),
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none
        ),
        prefixIcon: Icon(icon,
          color: Colors.grey,
        ),
        hintText: hintText,
        hintStyle: subtitleTextStyle
      ),
    );
  }
}