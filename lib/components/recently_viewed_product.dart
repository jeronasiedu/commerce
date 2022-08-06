// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class RecentlyViewedProduct extends StatelessWidget {
  const RecentlyViewedProduct({
    Key? key,
    required this.color,
    required this.name,
    required this.image,
    required this.price,
  }) : super(key: key);
  final Color color;
  final String name;
  final String image;
  final String price;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      height: 330,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 180,
                  decoration: BoxDecoration(
                    color: color,
                  ),
                  child: Image.asset(
                    image,
                    width: 200,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // Description
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 4),
                                    child: Text(
                                      name,
                                      style: const TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Text(
                                    "The intuitive and intelligent MacBook M1 is here. Order your mcbook",
                                    style: Theme.of(context).textTheme.caption,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                  )
                                ],
                              ),
                            ),
                            Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey[200]!,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: IconButton(
                                onPressed: () {},
                                splashRadius: 18,
                                iconSize: 15,
                                color: Colors.grey[400],
                                icon: const Icon(Icons.favorite),
                              ),
                            )
                          ],
                        ),
                        // Price
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$$price",
                              style: Theme.of(context).textTheme.headline6,
                            ),
                            SizedBox(
                              width: 40,
                              height: 30,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  elevation: 0,
                                  padding: EdgeInsets.zero,
                                ),
                                child: const Icon(
                                  FeatherIcons.plus,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
