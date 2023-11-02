import 'package:flutter/material.dart';

import '../widgets/added_card.dart';
import '../widgets/custom_title.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 231, 229, 229),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            children: [
              const SizedBox(height: 16),
              LiveChart(size: size),
              const SizedBox(height: 16.0),
              const AddedCards(title: "ABOUT JUMIA", childern: [
                CustomListTile(title: "Faq"),
                CustomListTile(title: "Privacy Policy"),
              ]),
              const SizedBox(height: 16.0),
              const AddedCards(title: "SETTINGS", childern: [
                CustomListTile(title: "Push Notification"),
                CustomListTile(title: "Country"),
                CustomListTile(title: "Language"),
              ]),
              const SizedBox(height: 16.0),
              const AddedCards(title: "APP INFO", childern: [
                //TODO: USE STATE AND DB TO GET THIS
                CustomListTile(title: "App Version 14.4.3"),
                CustomListTile(title: "Cache used: 0 B"),
              ])
            ],
          ),
        ));
  }
}

class LiveChart extends StatelessWidget {
  const LiveChart({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
        width: size.width * .8,
        decoration: BoxDecoration(
          color: Colors.yellow[900],
          borderRadius: BorderRadius.circular(4.0),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.3),
              spreadRadius: 1,
              blurRadius: 2,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.chat, color: Colors.white),
            Expanded(
              child: Center(
                child: Text(
                  "Start Live Chat",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
