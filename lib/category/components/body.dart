import 'package:flutter/material.dart';

import '../../responsive.dart';
import '../../size_config.dart';
import 'mobile_categories_container.dart';
import 'desktop_categories_container.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: _MobileCategory(),
      desktop: _DesktopCategory(),
    );
  }
}

class _MobileCategory extends StatelessWidget {
  const _MobileCategory({super.key});

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
            child: const MobileCategoriesContainer(),
          )
        ],
      ),
    ));
  }
}

class _DesktopCategory extends StatelessWidget {
  const _DesktopCategory({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(flex: 2, child: Container()),
        SizedBox(
          width: 800,
          child: SafeArea(
          child: SingleChildScrollView(
              child: Column(
          children: const[
            SizedBox(height: 32,),
            Padding(
              padding:
                  EdgeInsets.symmetric(
                    horizontal: 20,
                  ),
              child: DesktopCategoriesContainer(),
            )
          ],
              ),
            )),
        ),
        Flexible(flex: 2, child: Container()),
      ],
    );
  }
}