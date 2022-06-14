import 'package:flutter/material.dart';
import 'package:marvel_app/Helpers/constant.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          text,
          style: subtitleTextStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
