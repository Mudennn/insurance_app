import 'package:flutter/material.dart';
import '../../announcement/components/desktop_recent_announcement.dart';
import '../../announcement/components/mobile_recent_announcement.dart';
import '../../constant.dart';
import '../../responsive.dart';
import '../../size_config.dart';
// import 'category_listview.dart';
import 'desktop_category_listview.dart';
import 'mobile_category_listview.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: _MobileHomePage(),
      desktop: _DesktopHomePage(),
    );
  }
}

class _MobileHomePage extends StatelessWidget {
  const _MobileHomePage({super.key});

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
            const MobileCategoryListView(),
            SizedBox(
              height: getProportionateScreenHeight(16),
            ),
            // -- RECENT ANNOUNCEMENT -- //
            const MobileRecentAnnouncement()
          ],
        ),
      ),
    ));
  }
}

class _DesktopHomePage extends StatelessWidget {
  const _DesktopHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(flex: 2, child: Container()),
        SizedBox(width: 800.0, child: SafeArea(
        child: SingleChildScrollView(
      child: Padding(
        padding:
           const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: const[
            SizedBox(
              height: 32,
            ),
            Text(
              'Welcome John!',
              style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w600,
                  color: headingColor),
            ),
            SizedBox(
              height: 16,
            ),
            // -- CATEGORY LIST VIEW -- //
            DesktopCategoryListView(),
            SizedBox(
              height: 16,
            ),
            // -- RECENT ANNOUNCEMENT -- //
            DesktopRecentAnnouncement()
          ],
        ),
      ),
    )) ),
        Flexible(flex: 2, child: Container()),
      ],
    );
  }
}
