import 'package:flutter/material.dart';
import 'package:zcommerce/view/category%20screen/components/cateforytabitem.dart';

class ListOfCategoryTabFrame extends StatefulWidget {
  const ListOfCategoryTabFrame({
    super.key,
    required this.size,
    required this.titles,
  });

  final Size size;
  final List<String> titles;

  @override
  State<ListOfCategoryTabFrame> createState() => _ListCategoryTabState();
}

class _ListCategoryTabState extends State<ListOfCategoryTabFrame> {
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
            child: CategoryTabitem(
              isSelected: _selected == index,
              title: category,
            ),
          );
        },
      ),
    );
  }
}
