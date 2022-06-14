import 'package:flutter/material.dart';
import 'package:marvel_app/Helpers/constant.dart';
import 'package:marvel_app/Helpers/helper_functions.dart';
import 'package:marvel_app/screens/home_screen.dart';
import 'package:marvel_app/screens/signup_screen.dart';
import '../Widgets/custom_text_button.dart';
import '../Widgets/custom_text_field.dart';
import '../Widgets/primary_button.dart';

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
              SizedBox(
                height: 10,
              ),
              Text(
                'Marvel App Nav 2',
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
                    padding: const EdgeInsets.all(20),
                    child: Image.asset(
                      'images/marvel_logo.jpg',
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 20,
                  right: 20,
                ),
                child: CustomTextField(
                  hintText: 'Email',
                  icon: Icons.email,
                  controller: emailController,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  top: 20,
                  right: 20,
                  bottom: 20,
                ),
                child: CustomTextField(
                  hintText: 'Password',
                  icon: Icons.lock,
                  controller: passwordController,
                  isObscure: true,
                ),
              ),
              PrimaryButton(
                title: 'LOGIN',
                onPressed: () {
                  print('Login Button Pressed');
                  HelperClass.navigateToScreen(context, HomeScreen());
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextButtoncustom(
                stext: 'Dont have an account? Sign Up!',
                sonPressed: () {
                  HelperClass.navigateToScreen(context, SignUpScreen());
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
