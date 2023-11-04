import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Row(
          children: [
            SizedBox(
              width: size.width * .2,
              child: const Column(
                children: [
                  ListTile(title: Text("Grocery")),
                ],
              ),
            ),
            SizedBox(
              width: size.width * .8,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Card(
                      color: Colors.red,
                      child: SizedBox(
                        height: 50,
                        width: size.width * .8,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ));
  }
}
