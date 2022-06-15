import 'package:flutter/material.dart';

class FCircularProgressBar extends StatelessWidget {
  const FCircularProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 50,
        width: 50,
        child: Center(child: const CircularProgressIndicator()));
  }
}
