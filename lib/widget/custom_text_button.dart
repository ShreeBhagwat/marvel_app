import 'package:flutter/material.dart';
import 'package:marvel_app/helpers/constant.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          title,
          style: subtitleTextStyle.copyWith(fontSize: 16),
        ),
      ),
    );
  }
}
