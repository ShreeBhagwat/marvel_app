import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/helpers/constant.dart';
import 'package:marvel_app/helpers/helper_function.dart';
import 'package:marvel_app/models/movie_model.dart';
import 'package:marvel_app/screens/cart_screen.dart';
import 'package:marvel_app/widget/circular_progress_bar.dart';
import 'package:marvel_app/widget/custom_text_button.dart';
import 'package:marvel_app/widget/custome_app_bar.dart';
import 'package:marvel_app/widget/primary_button.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key, required this.movieData}) : super(key: key);
  final MovieData movieData;
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: CustomeAppBar(
        Title: widget.movieData.title.toString(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Hero(
              tag: widget.movieData.id.toString(),
              child: CachedNetworkImage(
                imageUrl: widget.movieData.coverUrl.toString(),
                fit: BoxFit.cover,
                placeholder: (context, url) => CircularProgressBar(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                textAlign: TextAlign.justify,
                widget.movieData.overview.toString(),
                style: titleTextStyle.copyWith(
                  fontSize: 15,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PrimerButton(
                  title: 'Add to Cart',
                  onPressed: () {
                    print('Add to Cart');
                    if (!cartItems.contains(widget.movieData))
                      cartItems.add(widget.movieData);
                    HelperClass.navigateToScreen(context, CartScreen());
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
