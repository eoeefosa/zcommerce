import 'package:flutter/material.dart';

class CategoryTabitem extends StatelessWidget {
  const CategoryTabitem({
    super.key,
    required this.isSelected,
    required this.title,
  });
  final bool isSelected;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: 70,
            color: isSelected ? Colors.grey[300] : Colors.white,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 1),
                Container(
                    color: isSelected ? Colors.yellow[900] : Colors.white,
                    width: 3),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    title,
                    textAlign: TextAlign.center,
                  ),
                )),
              ],
            )),
        const Divider(height: 1),
      ],
    );
  }
}
