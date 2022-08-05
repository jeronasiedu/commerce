import 'package:commerce/widgets/category_btn.dart';
import 'package:commerce/widgets/filter_btn.dart';
import 'package:flutter/material.dart';

class CategoriesPanel extends StatelessWidget {
  CategoriesPanel({
    Key? key,
  }) : super(key: key);

  List categories = [
    {"text": "Jordan ", "image": "assets/shoe5.png"},
    {"text": "Nick AirForce", "image": "assets/shoe7.png"},
    {"text": "Lenovo", "image": "assets/laptop2.png"},
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
