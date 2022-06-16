import 'package:flutter/material.dart';
import 'package:marvel_app/Helpers/constant.dart';
import 'package:marvel_app/Helpers/helper_functions.dart';
import 'package:marvel_app/Screens/cart_screen.dart';
import 'package:marvel_app/Screens/settings_cart.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    required this.title,
    required this.showActionButton,
    required this.showBackButton,
  }) : super(key: key);

  final String title;
  final bool showActionButton;
  final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
        centerTitle: false,
        automaticallyImplyLeading: showBackButton,
        backgroundColor: backgroundColor,
        title: Text(title),
        actions: showActionButton
            ? [
                IconButton(
                    onPressed: () {
                      HelperClass.navigateToScreen(context, CartScreen());
                    },
                    icon: Icon(Icons.shopping_cart)),
                IconButton(
                    onPressed: () {
                      HelperClass.navigateToScreen(context, SettingsScreen());
                    },
                    icon: Icon(Icons.settings)),
              ]
            : []);
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
