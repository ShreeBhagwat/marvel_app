import 'package:flutter/material.dart';
import 'package:marvel_app/helpers/constant.dart';
import 'package:marvel_app/helpers/helper_function.dart';
import 'package:marvel_app/screens/login_screen.dart';
import 'package:marvel_app/widget/custom_text_button.dart';
import 'package:marvel_app/widget/primary_button.dart';

import '../widget/custom_text_field_widget.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  State<SignupScreen> createState() => _SignupScreencreenState();
}

class _SignupScreencreenState extends State<SignupScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('login screen'),
      // ),
      backgroundColor: backgroundColor,
      body: Center(
        child: SafeArea(
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
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Image.asset('images/marvellog.png'),
                  ),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(38)),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20, right: 20),
                child: custom_text_field(
                  emailController: emailController,
                  icon: Icons.email,
                  hintText: 'Email',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, top: 20, bottom: 20),
                child: custom_text_field(
                  emailController: passwordController,
                  icon: Icons.lock,
                  hintText: 'Password',
                  isobscure: true,
                ),
              ),
              PrimerButton(
                  title: 'Sign Up',
                  onPressed: () {
                    HelperClass.navigateToScreen(context, LoginScreen());
                  }),
              CustomTextButton(
                title: "Already a user? Login ",
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
