import 'package:flutter/material.dart';
import '../../size_config.dart';
import 'important_announcement.dart';
import 'mobile_recent_announcement.dart';


class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(20),
          ),
          child: Column(
            children: [
              SizedBox(
                height: getProportionateScreenHeight(32),
              ),
              const ImportantAnnouncement(),
              SizedBox(
                height: getProportionateScreenHeight(16),
              ),
              const MobileRecentAnnouncement()
            ],
          ),
        ),
      ),
    );
  }
}
