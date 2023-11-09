import 'package:flutter/material.dart';
import 'package:zcommerce/widgets/productitem.dart';

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
            CategoriesDetailsFrame(size: size)
          ],
        ));
  }
}

class CategoriesDetailsFrame extends StatefulWidget {
  const CategoriesDetailsFrame({
    super.key,
    required this.size,
  });

  final Size size;
  static const _widthpercent = 0.7;

  @override
  State<CategoriesDetailsFrame> createState() => _CategoriesDetailsFrameState();
}

class _CategoriesDetailsFrameState extends State<CategoriesDetailsFrame> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width * CategoriesDetailsFrame._widthpercent,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 4.0),
        child: ListView(
          children: [
            const CustomCard(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "ALL PRODUCTS",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      wordSpacing: 4,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 15,
                  ),
                ],
              ),
            ),
            CustomCard(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      child: Text(
                        "MAKEUP",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          wordSpacing: 4,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "SEE ALL",
                        style: TextStyle(
                          color: Colors.yellow[900],
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  //TODO MAKE THE SIZEDBOX MORE RESPONSIVE
                  height: 200,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: 9,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ProductItems(),
                        );
                      }),
                )
              ],
            )),
            CustomCard(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      child: Text(
                        "HOUSEHOLD CLEANING",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          wordSpacing: 4,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "SEE ALL",
                        style: TextStyle(
                          color: Colors.yellow[900],
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 100,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ProductItems(),
                        );
                      }),
                )
              ],
            )),
            CustomCard(
                child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Flexible(
                      child: Text(
                        "BABY PRODUCTS",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 12,
                          wordSpacing: 4,
                        ),
                      ),
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "SEE ALL",
                        style: TextStyle(
                          color: Colors.yellow[900],
                          fontSize: 12,
                        ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                      ),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: ProductItems(),
                        );
                      }),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
    required this.child,
  });

  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 6),
        child: child,
      ),
    );
  }
}
