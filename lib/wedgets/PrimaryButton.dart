
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helper/constant.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key, required this.title, required this.onpressed,
  }) : super(key: key);

final String title;
final VoidCallback onpressed;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 70,
      decoration: ShapeDecoration(
        color: Colors.blue.withOpacity(0.5),
        shape: ContinuousRectangleBorder(
        borderRadius: BorderRadius.circular(38),
        ),
        ),
        child: InkWell(
          onTap: onpressed,
          child: Center(
            child: Text(title,
            style: titleTextStyle.copyWith(fontSize: 20),),
          ),
        ),
    );
  }
}