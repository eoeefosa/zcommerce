import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FeedCards extends StatelessWidget {
  const FeedCards(
      {super.key,
      required this.title,
      required this.imageurl,
      this.description,
      this.time});
  final String title;
  final List<String> imageurl;
  final String? description;
  final int? time;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Column(children: [
        Text(title),
        imageurl.length == 1
            ? ClipRRect(
                child: Image.asset(imageurl[0]),
              )
            : ClipRRect(
                child: CarouselSlider(
                  options: CarouselOptions(),
                  items: imageurl
                      .map((item) => Container(
                            child: Center(
                                child: Image.asset(item,
                                    fit: BoxFit.cover, width: 1000)),
                          ))
                      .toList(),
                ),
              ),
        description == null ? Container() : Text(description!),
        Row(
          children: [
            Text('$time'),
            TextButton(
                onPressed: () {},
                child: const Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.share),
                    Text('SHARE'),
                  ],
                ))
          ],
        )
      ]),
    );
  }
}
