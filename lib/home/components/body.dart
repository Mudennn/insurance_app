import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../size_config.dart';
import 'categories_list.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: getProportionateScreenWidth(20),
                vertical: getProportionateScreenWidth(32)),
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
          ),
          // SizedBox(
          //   height: getProportionateScreenHeight(16),
          // ),
          Padding(
            padding:
                EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: getProportionateScreenWidth(18),
                      fontWeight: FontWeight.w600,
                      color: headingColor),
                ),
                const SizedBox(
                  height: 16,
                ),
                const SizedBox(
                  height: double.maxFinite,
                  child: CategoriesList(),
                )
                
              ],
            ),
          )
        ],
      ),
    ));
  }
}

