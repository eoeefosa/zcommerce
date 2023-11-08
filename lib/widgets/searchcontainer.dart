import 'package:flutter/material.dart';
import 'package:zcommerce/widgets/jumiaSearch.dart';

class SearchContainer extends StatelessWidget {
  final TextEditingController controller = TextEditingController();
  final Function(String) onSearch;

  SearchContainer({super.key, required this.onSearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4.0),
        // boxShadow: [
        // BoxShadow(
        // color: Colors.grey.withOpacity(0.3),
        // spreadRadius: 1,
        // blurRadius: 2,
        // offset: const Offset(0, 2),
        // ),
        // ],
      ),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              onSubmitted: onSearch,
              onTap: () {
                showSearch(context: context, delegate: JumaiSearch());
              },
              decoration: const InputDecoration(
                hintText: 'Search for products',
                border: InputBorder.none,
                prefixIcon:
                    Icon(Icons.search), // Add the search icon as a prefix icon
              ),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              onSearch(controller.text);
            },
          ),
        ],
      ),
    );
  }
}
