import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Helpers/helper_functions.dart';
import 'package:marvel_app/Widgets/custom_text_field.dart';
import 'package:marvel_app/Helpers/constant.dart';
import 'package:marvel_app/screen/signup_screen.dart';

import '../Widgets/custom_text_button.dart';
import '../Widgets/primary_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController pwdController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Marvel',
                style: titleTextStyle,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 100,
                  // width: 200,
                  decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(38))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset('images/marvel.jpg'),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 20.0, top: 20.0, right: 20.0),
                child: custom_text_field_widget(
                  hintText: 'Email',
                  icon: Icons.mail,
                  controller: emailController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20.0, bottom: 20.0, right: 20.0),
                child: custom_text_field_widget(
                  hintText: 'Password',
                  icon: Icons.lock,
                  controller: pwdController,
                  isObsecure: true,
                ),
              ),
              primary_button(
                title: 'Login',
                onPressed: () {
                  print('Login button pressed...');
                },
              ),
              custom_text_button(
                textTitle: "Don't have an acount? Sign up!",
                onPressed: () {
                  print('Signup.....');
                  HelperClass.navigateToScreen(context, Sign_Up_Screen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
