import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:marvel_app/Helpers/constant.dart';
import 'package:marvel_app/Models/movie_model.dart';
import 'package:marvel_app/Widgets/CustomAppBar.dart';
import 'package:marvel_app/Widgets/primary_button.dart';

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
        appBar: CustomAppBar(
          showActionButton: true,
          showBackButton: true,
          title: widget.movieData.title.toString(),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            Hero(
              tag: widget.movieData.id.toString(),
              child: CachedNetworkImage(
                imageUrl: widget.movieData.coverUrl.toString(),
                width: double.infinity,
                fit: BoxFit.fitWidth,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(widget.movieData.overview.toString(),
                  style: subtitleTextStyle),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: PrimaryButton(
                  title: 'Book Ticket',
                  onPressed: () {
                    if (cartItems.contains(widget.movieData)) {
                    } else {
                      cartItems.add(widget.movieData);
                    }
                  }),
            ),
            SizedBox(
              height: 30,
            ),
          ]),
        ));
  }
}
