import 'package:flutter/material.dart';
import '../../announcement/components/recent_announcement.dart';
import '../../constant.dart';
import '../../size_config.dart';
import 'category_listview.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(
              height: getProportionateScreenHeight(32),
            ),
            Text(
              'Welcome John!',
              style: TextStyle(
                  fontSize: getProportionateScreenWidth(18),
                  fontWeight: FontWeight.w600,
                  color: headingColor),
            ),
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
            // -- CATEGORY LIST VIEW -- //
            const CategoryListView(),
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
            // -- RECENT ANNOUNCEMENT -- //
            const RecentAnnouncement()
          ],
        ),
      ),
    ));
  }
}

