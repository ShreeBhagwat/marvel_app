import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Helpers/constants.dart';
import 'package:marvel_app/screens/home_screen.dart';
import 'package:marvel_app/screens/signup_screen.dart';

import '../primary_button.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailIdTextController = TextEditingController();

  TextEditingController passwordTextController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  'Marvel Nav 2',
                  style: titleTextStyle,
                ),
                Container(
                  decoration: ShapeDecoration(
                      shape: ContinuousRectangleBorder(
                          borderRadius: BorderRadius.circular(35)),
                      color: Colors.white),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      'images/marvellogo.png',
                      width: 200,
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: CustomTextField(
                      hintText: 'Email',
                      icon: Icons.email,
                      controller: emailIdTextController,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: CustomTextField(
                      hintText: 'Password',
                      icon: Icons.lock,
                      controller: emailIdTextController,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                // Padding(
                //   padding: const EdgeInsets.all(8.0),
                //   child: Container(
                //     child: TextField(
                //       decoration: InputDecoration(
                //           border:
                //               OutlineInputBorder(borderSide: BorderSide.none),
                //           prefixIcon: Icon(
                //             Icons.lock,
                //             color: Colors.grey,
                //           ),
                //           hintText: 'Password',
                //           hintStyle:
                //               TextStyle(color: Colors.grey, fontSize: 18)),
                //     ),
                //   ),
                // ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Forgot Password ?',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: InkWell(
                    onTap: () {
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (context) => signupscreen()));
                    },
                    child: primarybutton(
                      title: 'Login Button',
                      onPress: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen()));
                      },
                    ),
                  ),
                ),
                Text(
                  'Dont have account ? Sign Up',
                  style: TextStyle(
                    color: Colors.blue,
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

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.icon,
    required this.hintText,
    this.isObscure = false,
    required this.controller,
  }) : super(key: key);
  final IconData icon;
  final String hintText;
  final bool isObscure;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isObscure,
      decoration: InputDecoration(
          border: OutlineInputBorder(borderSide: BorderSide.none),
          prefixIcon: Icon(
            icon,
            color: Colors.grey,
          ),
          hintText: hintText,
          hintStyle: TextStyle(color: Colors.grey, fontSize: 18)),
    );
  }
}
