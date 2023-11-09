import 'package:flutter/material.dart';

import 'components/listofcategoryframe.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: Colors.grey[300],
        body: Row(
          children: [
            ListOfCategoryTabFrame(
              size: size,
              // TODO: GET FROM API
              titles: const [
                "Grocery",
                "Health & Beauty",
                "Home & Office",
                "Phone & Tablets",
                "Computing",
                "Electronics",
                "Fashion",
                "Garden & Outdoors",
                "Automobile",
                "Sporting Goods",
                "Gaming",
                "Baby Products"
              ],
            ),
            SizedBox(
              width: size.width * .7,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  children: [
                    Card(
                      color: Colors.red,
                      child: SizedBox(
                        height: 50,
                        width: size.width * .70,
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
