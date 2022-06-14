import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helpers/constant.dart';

class custom_text_button extends StatelessWidget {
  const custom_text_button({
    Key? key,
    required this.textTitle,
    required this.onPressed,
  }) : super(key: key);

  final String textTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(textTitle, style: titleTextStyle.copyWith(fontSize: 15)),
      ),
    );
  }
}
