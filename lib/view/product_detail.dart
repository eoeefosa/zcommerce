import 'package:flutter/material.dart';
import 'package:zcommerce/widgets/cartwidget.dart';
import 'package:zcommerce/widgets/search_icon.dart';

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details"),
        actions: const [
          SearchIcon(),
          CartWiget(),
        ],
      ),
    );
  }
}
