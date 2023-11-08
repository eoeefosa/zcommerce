import 'package:flutter/material.dart';
import 'package:zcommerce/assets/images.dart';

class JumaiSearch extends SearchDelegate<String>{
  final products = [
    "half cast oil",
    "lightening face cream",
    "new brightening creamy scrub"
  ];
  final recentProducts = [
    "half cast oil",
    "lightening face cream",
    "new brightening creamy scrub"
  ];
 @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
          onPressed: () {
            if (query.isEmpty) {
              close(context, '');
            } else {
              query = '';
            }
          },
          icon: const Icon(Icons.clear))
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, ''),
        icon: const Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(ImagesAssets.jumiafood),
          const SizedBox(height: 30),
          Text(
            query,
            style: const TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestions = query.isEmpty
        ? recentProducts
        : products.where((product) {
            final productLower = product.toLowerCase();
            final queryLower = query.toLowerCase();
            return productLower.contains(queryLower);
          }).toList();

    return buildSuggestionSuccess(suggestions);
  }

  Widget buildSuggestionSuccess(List<String> suggestions) => ListView.builder(
        itemBuilder: (context, index) {
          final suggestion = suggestions[index];
          return ListTile(
            onTap: () {
              query = suggestion;
              showResults(context);
            },
            leading: Image.asset(ImagesAssets.jumiafood),
            title: Text(suggestion),
          );
        },
        itemCount: suggestions.length,
      );
  
}