import 'package:flutter/material.dart';
import 'package:flutter_blog/models/Categories.dart';

import '../../../constraints.dart';
import 'sidebar_container.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SidebarContainer(
      title: "Categories",
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          categories.length,
          (index) => CategoryBox(
            title: categories[index].name,
            numOfItems: categories[index].numOfEntries,
            press: () {},
          ),
        ),
      ),
    );
  }
}

class CategoryBox extends StatelessWidget {
  final String title;
  final int numOfItems;
  final VoidCallback press;

  const CategoryBox({
    Key? key,
    required this.title,
    required this.numOfItems,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text.rich(
        TextSpan(
          text: title,
          style: TextStyle(color: kBodyTextColor),
          children: [
            TextSpan(
              text: " ($numOfItems)",
              style: TextStyle(color: kBodyTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
