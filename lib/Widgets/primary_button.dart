import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helpers/constant.dart';

class primary_button extends StatelessWidget {
  const primary_button({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200,
        height: 70,
        decoration: ShapeDecoration(
            color: Colors.blue.withOpacity(0.8),
            shape: ContinuousRectangleBorder(
                borderRadius: BorderRadius.circular(38))),
        child: InkWell(
          onTap: onPressed,
          child: Center(
            child: Text(
              title,
              style: titleTextStyle.copyWith(fontSize: 18),
            ),
          ),
        ));
  }
}
