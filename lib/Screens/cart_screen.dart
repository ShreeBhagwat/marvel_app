import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/Helpers/constant.dart';
import 'package:marvel_app/Widgets/CustomAppBar.dart';

class CartScreen extends StatefulWidget {
  CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: CustomAppBar(
          showActionButton: false,
          showBackButton: true,
          title: 'Cart',
        ),
        backgroundColor: Colors.black,
        body: cartItems.length > 0
            ? ListView.builder(
                itemCount: cartItems.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                    color: backgroundColor,
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: CachedNetworkImage(
                              imageUrl: cartItems[index].coverUrl,
                              width: 100,
                              fit: BoxFit.fitWidth,
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(cartItems[index].id.toString(),
                                    style:
                                        titleTextStyle.copyWith(fontSize: 20)),
                                Text(cartItems[index].title,
                                    style: subtitleTextStyle),
                              ],
                            ),
                          ),
                        ),
                        // Spacer(),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: IconButton(
                              onPressed: () {
                                cartItems.removeAt(index);
                                setState(() {});
                              },
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                                size: 35,
                              )),
                        )
                      ],
                    ),
                  );
                },
              )
            : Center(
                child: Text(
                  'No Items in Cart',
                  style: subtitleTextStyle,
                ),
              ));
  }
}
