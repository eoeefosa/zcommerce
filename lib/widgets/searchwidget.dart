import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  final TextEditingController _searchController = TextEditingController();
  final Function(String) onSearch;

  SearchWidget({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _searchController,
            decoration: const InputDecoration(
              hintText: 'Search...',
            ),
            onSubmitted: (query) {
              onSearch(query);
            },
          ),
        ),
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            onSearch(_searchController.text);
          },
        ),
      ],
    );
  }
}
