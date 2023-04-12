import 'package:flutter/material.dart';

import '../../size_config.dart';
import 'categories_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(32),),
          Padding(
            padding:
                EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20),
                ),
            child: const CategoriesContainer(),
          )
        ],
      ),
    ));
  }
}