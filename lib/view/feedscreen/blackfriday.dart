import 'package:flutter/material.dart';
import 'package:zcommerce/assets/images.dart';
import 'package:zcommerce/widgets/feedcard.dart';

class BlackFriday extends StatefulWidget {
  const BlackFriday({super.key});

  @override
  State<BlackFriday> createState() => _BlackFridayState();
}

class _BlackFridayState extends State<BlackFriday> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const BouncingScrollPhysics(),
      children: [
        const FeedCards(
          title: "1 day to go",
          imageurl: [ImagesAssets.fastdelivery, ImagesAssets.jumiafood],
          description: "Search Now!!",
          time: 99,
        ),
        ...List.generate(
          7,
          (index) => const FeedCards(
            title: "Free Food Delivery",
            imageurl: [ImagesAssets.jumiafood],
            description: "Order now!!",
            time: 99,
          ),
        )
      ],
    );
  }
}
