import 'package:flutter/material.dart';
import 'package:zcommerce/widgets/jumiaSearch.dart';

class SearchIcon extends StatelessWidget {
  const SearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return IconButton(
        onPressed: () {
          showSearch(context: context, delegate: JumaiSearch());
        },
        icon: const Icon(Icons.search));
  }
}
