import 'package:flutter/material.dart';

import '../Helpers/constant.dart';

class CutomeTextButton extends StatelessWidget {
  const CutomeTextButton({
    Key? key,
    required this.callback,
    required this.text,
  }) : super(key: key);

  final VoidCallback callback;
  final String text;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Text(
        text,
        style: subtitleTextStyle.copyWith(
          color: Colors.blue.withOpacity(0.5),
        ),
      ),
    );
  }
}
