import 'package:flutter/material.dart';
import 'package:zcommerce/widgets/custom_courser.dart';
import 'package:zcommerce/widgets/productitem.dart';

import '../assets/images.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const _gap = SizedBox(height: 8);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Column(
          children: [
            const CallToOrder(),
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
            ),
            _gap,
            Container(
              height: 178,
              width: double.infinity,
              color: Colors.white,
              child: GridView.builder(
                  padding: const EdgeInsets.only(
                      right: 16.0, left: 16.0, top: 16.0, bottom: 16.0),
                  itemCount: 8,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemBuilder: (context, index) {
                    return const Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
                      child: ProductItems(),
                    );
                  }),
            ),
          ],
        ));
  }
}

class CallToOrder extends StatelessWidget {
  const CallToOrder({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
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
        ),
      ),
    );
  }
}
