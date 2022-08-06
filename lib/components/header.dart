import 'package:flutter/material.dart';
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class Header extends StatelessWidget {
  const Header({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {},
            icon: const Icon(
              FeatherIcons.chevronLeft,
              color: Colors.black87,
            ),
            iconSize: 32,
            splashRadius: 24,
          ),
        ),
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              contentPadding: const EdgeInsets.all(12),
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
    );
  }
}
