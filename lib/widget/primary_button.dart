import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helpers/constant.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.text,
    required this.callback,
  }) : super(key: key);

  final String text;
  final VoidCallback callback;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: ShapeDecoration(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.circular(
            38,
          ),
        ),
        color: Colors.blue.withOpacity(0.5),
      ),
      width: 200,
      height: 70,
      child: InkWell(
        onTap: callback,
        child: Center(
            child: Text(
          text,
          style: titleTextStyle.copyWith(
            fontSize: 20,
          ),
        )),
      ),
    );
  }
}
