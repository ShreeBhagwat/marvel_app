import 'package:flutter/material.dart';

import '../Helpers/constant.dart';
import '../widget/cutome_text_button.dart';
import '../widget/cutome_text_field.dart';
import '../widget/primary_button.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundColor,
          shadowColor: backgroundColor,
          title: Text(
            'Sign Up',
            style: titleTextStyle,
          ),
        ),
        backgroundColor: backgroundColor,
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 20,
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
                  callback: () {},
                  text: 'Sign Up',
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: CutomeTextButton(
                    callback: () {
                      Navigator.of(context).pop();
                    },
                    text: 'Already have account? Sign In',
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
