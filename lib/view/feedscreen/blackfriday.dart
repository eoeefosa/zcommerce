import 'package:flutter/material.dart';
import 'package:zcommerce/widgets/feedcard.dart';

class BlackFriday extends StatefulWidget {
  const BlackFriday({super.key});

  @override
  State<BlackFriday> createState() => _BlackFridayState();
}

class _BlackFridayState extends State<BlackFriday> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FeedCards(title: "1 day to go", imageurl: [])
      ],
    );
  }
}