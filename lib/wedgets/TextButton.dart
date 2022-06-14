
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helper/constant.dart';

class TextButton extends StatelessWidget {
  const TextButton({
    Key? key, required this.onpressed, required this.texttitle,
  }) : super(key: key);
final String texttitle;
final VoidCallback onpressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onpressed,
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          texttitle,
        style: titleTextStyle.copyWith(fontSize: 18),
        
        ),
      ),
    );
  }
}
