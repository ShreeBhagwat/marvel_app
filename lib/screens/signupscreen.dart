import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Helper/constant.dart';
import 'package:marvel_app/wedgets/TextButton.dart';

import '../wedgets/CustomTextButton.dart';
import '../wedgets/CustomTextWidget.dart';
import '../wedgets/PrimaryButton.dart';

class SignUpScreen extends StatelessWidget {
   SignUpScreen({Key? key}) : super(key: key);

TextEditingController emailIdTextController = TextEditingController();

TextEditingController passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
     return Scaffold(

      backgroundColor: backgroundColor,
      body: Column(children: [
        Text('Marvel App Nav 2',
        style: titleTextStyle,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            height: 100,
            width: 200,
            color: Colors.white,
            child : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('images/Marvel_Studios_logo.jpg'),
            )
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 20.0,right: 20.0,bottom: 10.0),
          child: CustomTextField(hintText: 'Email',icon: Icons.mail,controller: emailIdTextController,),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20.0,top: 20.0,right: 20.0,bottom: 10.0),
          child: CustomTextField(hintText: 'Password',icon: Icons.lock,controller: emailIdTextController,isObsecure: true,),
        ),

        PrimaryButton(
          title: 'Login',
          onPressed: (){
            print('login to');
          },
        ),
                
        CustomeTextButton(
          text: '',
          onPressed: (){},
        ),
        
       
      ],),
    );  
  }
}
