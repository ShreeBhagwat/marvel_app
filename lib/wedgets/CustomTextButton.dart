
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helper/constant.dart';

class CustomeTextButton extends StatelessWidget {
  const CustomeTextButton({
    Key? key, required this.text, required this.onPressed,
  }) : super(key: key);

  final String text;
 final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text('DOnt have a signup? Sign Up',
         style: titleTextStyle.copyWith(fontSize: 15)),
      ),
    );

     
  }
}
