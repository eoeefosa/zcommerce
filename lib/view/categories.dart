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
            ListCategoryTab(
              size: size,
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

class ListCategoryTab extends StatefulWidget {
  const ListCategoryTab({
    super.key,
    required this.size,
    required this.titles,
  });

  final Size size;
  final List<String> titles;

  @override
  State<ListCategoryTab> createState() => _ListCategoryTabState();
}

class _ListCategoryTabState extends State<ListCategoryTab> {
  int _selected = 0;
  void changeSelected(int index) {
    setState(() {
      _selected = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.size.width * .30,
      child: ListView.builder(
        itemCount: widget.titles.length,
        itemBuilder: (context, index) {
          final category = widget.titles[index];
          return InkWell(
            onTap: () {
              changeSelected(index);
            },
            child: CategoryTab(
              isSelected: _selected == index,
              title: category,
            ),
          );
        },
      ),
    );
  }
}

class CategoryTab extends StatelessWidget {
  const CategoryTab({
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
            height: 50,
            color: isSelected ? Colors.grey : Colors.white,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        color: isSelected ? Colors.yellow[900] : Colors.white,
                        width: 5),
                    Expanded(
                        child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Text(
                        title,
                        textAlign: TextAlign.center,
                      ),
                    )),
                  ],
                ),
                const Divider(),
              ],
            )),
      ],
    );
  }
}
