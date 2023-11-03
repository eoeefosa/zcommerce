import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomCarousel extends StatefulWidget {
  const CustomCarousel({super.key, required this.imageurl});
  final List<String> imageurl;

  @override
  State<CustomCarousel> createState() => _CustomCoState();
}

class _CustomCoState extends State<CustomCarousel> {
  int current = 0;
  @override
  Widget build(BuildContext context) {
    return widget.imageurl.length == 1
        ? ClipRRect(
            borderRadius: BorderRadius.circular(4),
            child: Image.asset(widget.imageurl[0]),
          )
        : Column(
            children: [
              ClipRRect(
                child: CarouselSlider(
                  options: CarouselOptions(
                    aspectRatio: 2.7,
                    viewportFraction: 0.95,
                    autoPlay: true,
                    onPageChanged: ((index, reason) {
                      //Handle page change
                      setState(() {
                        current = index;
                      });
                    }),
                    reverse: false,
                    enableInfiniteScroll: false,
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
          );
  }
}
