import 'package:flutter/material.dart';
import 'package:insurance_app/responsive.dart';
import '../../size_config.dart';
import 'desktop_important_announcement.dart';
import 'desktop_recent_announcement.dart';
import 'important_announcement.dart';
import 'mobile_recent_announcement.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return const Responsive(
      mobile: _MobileBody(), 
    desktop: _DesktopBody());
  }
}

class _MobileBody extends StatelessWidget {
  const _MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
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

class _DesktopBody extends StatelessWidget {
  const _DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Flexible(flex: 2, child: Container()),
        SizedBox(
          width: 800,
          child: SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children:const [
               SizedBox(
                height: 32,
              ),
               DesktopImportantAnnouncement(),
              SizedBox(
                height: 16,
              ),
               DesktopRecentAnnouncement()
            ],
          ),
        ),
      ),
    ),
        ),
        Flexible(flex: 2, child: Container()),
      ],
    );
  }
}
