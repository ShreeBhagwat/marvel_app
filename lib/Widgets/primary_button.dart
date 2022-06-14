import 'package:flutter/material.dart';
import 'package:marvel_app/Helpers/constant.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key, required this.title, required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 70,
      decoration: ShapeDecoration(
        color: Colors.blue.withOpacity(0.5),
        shape:
            ContinuousRectangleBorder(borderRadius: BorderRadius.circular(38)),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Center(
          child: Text(
            title,
            style: titleTextStyle.copyWith(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
