import 'package:commerce/widgets/category_btn.dart';
import 'package:commerce/widgets/filter_btn.dart';
import 'package:flutter/material.dart';

class CategoriesPanel extends StatelessWidget {
  CategoriesPanel({
    Key? key,
  }) : super(key: key);

  List categories = [
    {"text": "Headset", "image": "assets/headset5.png"},
    {"text": "Laptop", "image": "assets/laptop4.png"},
    {"text": "Ear Bud", "image": "assets/earbud4.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          const FilterBtn(),
          Expanded(
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return CategoryBtn(
                  image: categories[index]['image'],
                  text: categories[index]['text'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
