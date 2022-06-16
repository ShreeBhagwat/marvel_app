import 'package:flutter/material.dart';
import 'package:marvel_app/Helper/constant.dart';
import 'package:marvel_app/screens/cartscreen.dart';
import 'package:marvel_app/screens/settingcart.dart';

import '../Helper/helperfunction.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget {
  CustomAppBar({
    
     Key? key, required this.title,
    required this.showActionButton,
    required this.showBackButton,
  }) : super(key: key);

final String  title;
final bool showActionButton;
final bool showBackButton;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      title: Text(title),
      
      actions: showActionButton == true
          ? [
              IconButton(
                  onPressed: () {
                    HelperClass.navigationToScreen(context, cardListScreen());
                  },
                  icon: Icon(Icons.shopping_cart)),
              IconButton(onPressed: () {
                HelperClass.navigationToScreen(context, SettingCart());
              }, icon: Icon(Icons.settings))
            ]
          : [],

    );
  }
 
  
  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
