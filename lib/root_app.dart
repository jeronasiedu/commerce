// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:commerce/components/category_title.dart';
import 'package:commerce/components/product_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:commerce/components/categories.dart';

class RootApp extends StatelessWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          FeatherIcons.chevronLeft,
                        ),
                        iconSize: 32,
                        splashRadius: 24,
                      ),
                    ),
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        contentPadding: const EdgeInsets.all(15),
                        hintText: "Search for a product,cloth, accessories",
                        suffixIcon: const Icon(
                          FeatherIcons.search,
                        ),
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(150),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              CategoriesPanel(),
              const Divider(
                height: 30,
              ),
              const CategoryTitle(
                title: "Hot Sales",
              ),
              const SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                    children: List.generate(5, (index) {
                  return const ProductCard(
                    image: "assets/headset1.png",
                    title: "MacBook Air M1",
                  );
                })),
              )
            ],
          ),
        ),
      ),
    );
  }
}
