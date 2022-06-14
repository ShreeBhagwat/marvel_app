import 'package:flutter/material.dart';
import 'package:flutter_tfriends/Screen/home_screen.dart';
import '../Helpers/helper_functions.dart';
import '../screen/signup_screen.dart';

import '../Helpers/constant.dart';
import '../widget/cutome_text_button.dart';
import '../widget/cutome_text_field.dart';
import '../widget/primary_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Marvel Nav 2',
                  style: titleTextStyle,
                ),
                Container(
                  margin: EdgeInsets.only(
                    top: 20,
                  ),
                  height: 150,
                  padding: EdgeInsets.all(
                    20,
                  ),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(
                        38,
                      ),
                    ),
                  ),
                  child: Image.asset(
                    'images/marvel.png',
                  ),
                ),
                const SizedBox(
                  height: 70,
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 20,
                    right: 20,
                  ),
                  child: CutomeTextFiled(
                    controller: emailController,
                    icon: Icons.email,
                    hint: 'Email',
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 20,
                    right: 20,
                  ),
                  child: CutomeTextFiled(
                    controller: passwordController,
                    icon: Icons.email,
                    hint: 'Password',
                    isObsure: true,
                  ),
                ),
                PrimaryButton(
                  callback: () {
                    HelperClass.naviagteToScreen(context, HomeScreen());
                  },
                  text: 'Sign In',
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CutomeTextButton(
                    callback: () {
                      HelperClass.naviagteToScreen(context, SignupScreen());
                    },
                    text: 'Dont have account? Sign Up',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
