import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          vertical: getProportionateScreenWidth(16)),
      child: Container(
        width: double.maxFinite,
        height: 50,
        decoration: BoxDecoration(
            color: placeholderColor,
            borderRadius: BorderRadius.circular(16)),
        child: TextField(
          onChanged: (value) {
            // search value
          },
          decoration: InputDecoration(
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            hintText: "Search Question",
            hintStyle: const TextStyle(color: textColor),
            prefixIcon: const Icon(
              Icons.search,
              color: textColor,
            ),
            contentPadding: EdgeInsets.symmetric(
              horizontal: getProportionateScreenWidth(20),
              vertical: getProportionateScreenHeight(16),
            ),
          ),
        ),
      ),
    );
  }
}