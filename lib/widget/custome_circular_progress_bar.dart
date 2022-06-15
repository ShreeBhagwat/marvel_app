import 'package:flutter/material.dart';

class CustomeCircularProgressBar extends StatelessWidget {
  const CustomeCircularProgressBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      child: Center(
          child: const CircularProgressIndicator(
        color: Colors.white,
      )),
    );
  }
}
