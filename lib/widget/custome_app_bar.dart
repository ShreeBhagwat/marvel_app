import 'package:flutter/material.dart';
import 'package:marvel_app/helpers/constant.dart';
import 'package:marvel_app/helpers/helper_function.dart';
import 'package:marvel_app/screens/cart_screen.dart';
import 'package:marvel_app/screens/login_screen.dart';

class CustomeAppBar extends StatelessWidget with PreferredSizeWidget {
  const CustomeAppBar({
    Key? key,
    required this.Title,
  }) : super(key: key);
  final String Title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // centerTitle: true,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      title: Text(Title),
      actions: [
        IconButton(
          onPressed: () {
            HelperClass.navigateToScreen(context, CartScreen());
          },
          icon: Icon(Icons.shopping_cart),
        ),
        IconButton(
          onPressed: () {
            Navigator.pushAndRemoveUntil<void>(
              context,
              MaterialPageRoute<void>(
                  builder: (BuildContext context) => const LoginScreen()),
              ModalRoute.withName('/'),
            );
          },
          icon: Icon(Icons.settings),
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
