import 'package:flutter/material.dart';

import '../assets/images.dart';

class ProductItems extends StatelessWidget {
  const ProductItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          child: Image.asset(ImagesAssets.fastdelivery),
        ),
        const Expanded(child: Text("Black Friday")),
      ],
    );
  }
}
