import 'package:flutter/material.dart';
import 'package:zcommerce/widgets/cartwidget.dart';
import 'package:zcommerce/widgets/search_icon.dart';

class NamedAppBar extends StatelessWidget {
  const NamedAppBar({
    super.key,
    required this.name,
  });
  final String name;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4),
      child: Row(
        children: [
          Expanded(
            child: Text(
              name,
              style: const TextStyle(
                fontSize: 32,
                color: Colors.white,
              ),
            ),
          ),
          const S$CIcons(),
        ],
      ),
    );
  }
}

class S$CIcons extends StatelessWidget {
  const S$CIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        SearchIcon(),
        CartWiget(),
      ],
    );
  }
}
