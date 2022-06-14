// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';

// import '../constant.dart';

// class custom_text_field_widget extends StatelessWidget {
//   const custom_text_field_widget(
//       {Key? key,
//       required this.icon,
//       required this.hintText,
//       this.isObsecure = false,
//       required this.controller})
//       : super(key: key);

//   final IconData icon;
//   final String hintText;
//   final bool? isObsecure;
//   final TextEditingController controller;

//   @override
//   Widget build(BuildContext context) {
//     return TextField(
//       cursorColor: Colors.grey,
//       style: titleTextStyle.copyWith(fontSize: 20),
//       decoration: const InputDecoration(
//           border: OutlineInputBorder(borderSide: BorderSide.none),
//           prefixIcon: Icon(
//             icon,
//             color: Colors.grey,
//           ),
//           hintText: hintText,
//           hintStyle: subtitleTextStyle),
//     );
//   }
// }

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Helpers/constant.dart';

class custom_text_field_widget extends StatelessWidget {
  const custom_text_field_widget({
    Key? key,
    required this.icon,
    required this.hintText,
    this.isObsecure,
    required this.controller,
  }) : super(key: key);

  final IconData icon;

  final String hintText;

  final bool? isObsecure;

  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextField(
      style: titleTextStyle.copyWith(fontSize: 20),
      decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
          hintText: hintText,
          hintStyle: subtitleTextStyle),
    );
  }
}
