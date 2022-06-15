import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/helpers/constant.dart';
import 'package:marvel_app/helpers/helper_function.dart';
import 'package:marvel_app/models/movie_model.dart';
import 'package:marvel_app/widget/circular_progress_bar.dart';
import 'package:marvel_app/widget/custom_text_button.dart';
import 'package:marvel_app/widget/custome_app_bar.dart';
import 'package:marvel_app/widget/primary_button.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  State<CartScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomeAppBar(
        Title: 'cart screen',
      ),
      body: ListView.builder(
          itemCount: cartItems.length,
          itemBuilder: (BuildContext context, int index) {
            return Card(
              color: backgroundColor,
              child: Row(
                children: [
                  CachedNetworkImage(
                    width: 120,
                    imageUrl: cartItems[index].coverUrl.toString(),
                    fit: BoxFit.cover,
                    placeholder: (context, url) => CircularProgressBar(),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              cartItems[index].id.toString(),
                              style: titleTextStyle.copyWith(fontSize: 15),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              cartItems[index].title.toString(),
                              style: titleTextStyle.copyWith(
                                  fontSize: 15, color: Colors.grey),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            cartItems.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.delete, color: Colors.red)),
                  )
                ],
              ),
            );
          }),
    );
  }
}
