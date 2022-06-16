import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel_app/Helper/constant.dart';


import '../wedgets/CustomAppBar.dart';

class cardListScreen extends StatefulWidget {
  const cardListScreen({Key? key}) : super(key: key);

  @override
  _cardListScreenState createState() => _cardListScreenState();
}

class _cardListScreenState extends State<cardListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'Card screen',
        showActionButton: true,
        showBackButton: false,
      ),
      backgroundColor: backgroundColor,
      body: cardItems.length > 0
          ? ListView.builder(
              itemCount: cardItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: backgroundColor,
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ClipRRect(
                            child: CachedNetworkImage(
                          imageUrl: cardItems[index].coverUrl,
                          width: 100,
                          fit: BoxFit.fitWidth,
                        )),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Text(
                                cardItems[index].id.toString(),
                                style: titleTextStyle.copyWith(fontSize: 20),
                              ),
                              Text(
                                cardItems[index].title,
                                style: subtitleTextStyle,
                              )
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: IconButton(
                            onPressed: () {
                              cardItems.removeAt(index);
                              setState(() {});
                            },
                            icon: Icon(
                              Icons.delete,
                              color: Colors.red,
                            )),
                      )
                    ],
                  ),
                );
              })
          : Center(
              child: Text(
                'No Items',
                style: subtitleTextStyle,
              ),
            ),
    );
  }
}
