// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:commerce/components/category_title.dart';
import 'package:commerce/components/header.dart';
import 'package:commerce/components/product_card.dart';
import 'package:commerce/components/recently_viewed_product.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

import 'package:commerce/components/categories.dart';
import 'package:ionicons/ionicons.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  List products = [
    {"title": "FiiO Ear Buds", "image": "assets/earbud.png", "price": "136"},
    {
      "title": "Beats Fit Pro",
      "image": "assets/headset5.png",
      "color": Colors.indigo.withOpacity(0.1),
      "price": "186"
    },
    {
      "title": "Beats Solo Pro",
      "image": "assets/headset7.png",
      "color": Colors.pinkAccent.withOpacity(0.1),
      "price": "194"
    },
  ];
  List recentlyViewed = [
    {
      "name": "Microsoft Surface",
      "image": "assets/laptop4.png",
      "color": Colors.amber.withOpacity(0.1),
      "price": "357"
    },
    {
      "name": "Sony Ear Buds",
      "image": "assets/earbud4.png",
      "color": Colors.blue.withOpacity(0.1),
      "price": "323"
    },
    {
      "name": "Audio Technica",
      "image": "assets/headset1.png",
      "color": Colors.red.withOpacity(0.1),
      "price": "470"
    },
    {
      "name": "Hyper X Headphone",
      "image": "assets/headset6.png",
      "color": Colors.deepPurple.withOpacity(0.1),
      "price": "202"
    },
  ];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        onTap: (prevIndex) {
          setState(() {
            currentIndex = prevIndex;
          });
        },
        currentIndex: currentIndex,
        selectedItemColor: Theme.of(context).colorScheme.primary,
        unselectedItemColor: Colors.grey[500],
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(FeatherIcons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Ionicons.wallet_outline), label: "Wallet"),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.activity), label: "Statistics"),
          BottomNavigationBarItem(
              icon: Icon(FeatherIcons.settings), label: "Settings"),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Header(),
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
                  children: List.generate(
                    products.length,
                    (index) {
                      return ProductCard(
                        image: products[index]["image"],
                        title: products[index]["title"],
                        color: products[index]['color'],
                        price: products[index]['price'],
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const CategoryTitle(
                title: "Recently Viewed",
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 330,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: recentlyViewed.length,
                  itemBuilder: (context, index) {
                    return RecentlyViewedProduct(
                      color: recentlyViewed[index]["color"],
                      image: recentlyViewed[index]['image'],
                      name: recentlyViewed[index]['name'],
                      price: recentlyViewed[index]['price'],
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
