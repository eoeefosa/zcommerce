import 'package:flutter/material.dart';
import 'package:zcommerce/widgets/custom_courser.dart';

import '../assets/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            Material(
                elevation: 2,
                color: Colors.black,
                child: SizedBox(
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8.0),
                      child: Text(
                        "CALL TO ORDER: 08147443220",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.grey[300],
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ))),
            const Material(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  child: CustomCarousel(imageurl: [
                    ImagesAssets.fastdelivery,
                    ImagesAssets.jumiafood,
                    ImagesAssets.fastdelivery,
                    ImagesAssets.jumiafood
                  ]),
                ),
              ),
            )
          ],
        ));
  }
}
