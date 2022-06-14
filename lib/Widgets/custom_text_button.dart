import 'package:flutter/material.dart';
import 'package:marvel_app/Helpers/constant.dart';

class TextButtoncustom extends StatelessWidget {
  const TextButtoncustom({
    Key? key,
    required this.stext,
    required this.sonPressed,
  }) : super(key: key);

  final String stext;
  final VoidCallback sonPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: sonPressed,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          stext,
          style: subtitleTextStyle.copyWith(
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}
