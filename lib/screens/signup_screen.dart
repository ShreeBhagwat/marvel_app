import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Helpers/helper_funtions.dart';

class signupscreen extends StatefulWidget {
  const signupscreen({Key? key}) : super(key: key);

  @override
  State<signupscreen> createState() => _signupscreenState();
}

class _signupscreenState extends State<signupscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Signup Screen'),
      ),
      body: Container(
        child: InkWell(
            onTap: () {
              HelperClass.nanvigateToScreen(context, widget);
            },
            child: Center(child: Text('Pop Back'))),
      ),
    );
  }
}
