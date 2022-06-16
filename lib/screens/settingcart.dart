import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Helper/constant.dart';
import 'package:marvel_app/screens/marvelappscreen.dart';
import 'package:marvel_app/wedgets/PrimaryButton.dart';

import '../Helper/helperfunction.dart';

class SettingCart extends StatelessWidget {
  const SettingCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: backgroundColor,
      body: Center(
        child: Column(
          children: [
            Padding(padding:  const EdgeInsets.all(20.0),
            child: Center(
              child: PrimaryButton(title: 'Logout', onPressed: (){
                HelperClass.navigationToScreen(context, MarvelAppScreen());
              }),
            ),
            ),
          ],
        ),
        
      ),
    );
    
  }
}