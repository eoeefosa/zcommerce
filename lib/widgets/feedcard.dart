import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class FeedCards extends StatefulWidget {
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
  State<FeedCards> createState() => _FeedCardsState();
}

class _FeedCardsState extends State<FeedCards> {
  int current = 0;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Column(children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                widget.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 8),
          widget.imageurl.length == 1
              ? ClipRRect(
                  borderRadius: BorderRadius.circular(4),
                  child: Image.asset(widget.imageurl[0]),
                )
              : Column(
                  children: [
                    ClipRRect(
                      child: CarouselSlider(
                        options: CarouselOptions(
                          aspectRatio: 2.2,
                          viewportFraction: 0.95,
                          onPageChanged: ((index, reason) {
                            //Handle page change
                            print(current);
                            setState(() {
                              current = index;
                            });
                          }),
                          enableInfiniteScroll: true,
                        ),
                        items: widget.imageurl
                            .map((item) => Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 4.0, vertical: 4),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(4),
                                    child: Image.asset(item,
                                        fit: BoxFit.cover, width: 1000),
                                  ),
                                ))
                            .toList(),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ...List.generate(
                            widget.imageurl.length,
                            (index) => Container(
                                  width: 10,
                                  height: 5,
                                  decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: current == index
                                          ? Colors.yellow[900]
                                          : Colors.grey),
                                ))
                      ],
                    )
                  ],
                ),
          const SizedBox(height: 8),
          widget.description == null
              ? Container()
              : Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.description!,
                      style: const TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '${widget.time} minutes ago',
                style: const TextStyle(
                  fontSize: 12,
                  color: Colors.black54,
                ),
              ),
              TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        Icons.share,
                        color: Colors.yellow[900],
                        size: 15,
                      ),
                      const SizedBox(width: 4),
                      Text(
                        'SHARE',
                        style:
                            TextStyle(color: Colors.yellow[900], fontSize: 13),
                      ),
                    ],
                  ))
            ],
          )
        ]),
      ),
    );
  }
}
