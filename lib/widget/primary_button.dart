import 'package:flutter/material.dart';
import 'package:marvel_app/helpers/constant.dart';

class PrimerButton extends StatelessWidget {
  const PrimerButton({
    Key? key,
    required this.title,
    required this.onPressed,
  }) : super(key: key);

  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70,
      width: 200,
      decoration: ShapeDecoration(
        color: Colors.blue.withOpacity(0.5),
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
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
