
import 'package:flutter/material.dart';

class AddedCards extends StatelessWidget {
  const AddedCards({
    super.key,
    required this.title,
    required this.childern,
  });

  final String title;
  final List<Widget> childern;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            title,
            style: const TextStyle(
                fontWeight: FontWeight.normal,
                color: Colors.grey,
                fontSize: 12),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 4),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(4.0),
          ),
          child: Column(
            children: [
              ...List.generate(
                childern.length,
                (index) => childern[index],
              )
            ],
          ),
        )
      ],
    );
  }
}
