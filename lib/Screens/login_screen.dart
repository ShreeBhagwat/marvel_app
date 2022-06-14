import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Helpers/helper_functions.dart';
import 'package:marvel_app/Screens/home_screen.dart';
import 'package:marvel_app/Screens/signup_screen.dart';
import 'package:marvel_app/Widgets/custom_text_button.dart';
import 'package:marvel_app/Widgets/custom_text_field.dart';
import 'package:marvel_app/Widgets/primary_button.dart';
import 'package:marvel_app/Helpers/constant.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

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
                  'Marvel Nav 2',
                  style: titleTextStyle,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Container(
                    height: 150,
                    decoration: ShapeDecoration(
                      color: Colors.white,
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(38),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset('images/Marvel_Studios_logo.jpeg'),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 20.0, top: 20, right: 20),
                  child: CustomTextField(
                    hintText: 'Email',
                    icon: Icons.email,
                    controller: emailController,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20.0, top: 20, right: 20, bottom: 20),
                  child: CustomTextField(
                    hintText: 'Password',
                    icon: Icons.lock,
                    controller: passwordController,
                    isObscure: true,
                  ),
                ),
                PrimaryButton(
                  title: 'Login',
                  onPressed: () {
                    HelperClass.navigateToScreen(context, HomeScreen());
                  },
                ),
                CustomTextButton(
                  text: "dont't Have an account? Sign Up!",
                  onPressed: () {
                    HelperClass.navigateToScreen(context, SignupScreen());
                  },
                ),
              ],
            ),
          ),
        ));
  }
}
