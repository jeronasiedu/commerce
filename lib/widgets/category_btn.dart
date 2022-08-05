// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CategoryBtn extends StatelessWidget {
  const CategoryBtn({
    Key? key,
    required this.image,
    required this.text,
  }) : super(key: key);
  final String image;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6),
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey.shade200,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          DecoratedBox(
            decoration: const BoxDecoration(),
            child: Image.asset(
              image,
              width: 45,
            ),
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.headline6!.copyWith(
                  fontSize: 15,
                ),
          )
        ],
      ),
    );
  }
}
