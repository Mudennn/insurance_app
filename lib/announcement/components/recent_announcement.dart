import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/announcement.dart';
import '../../size_config.dart';
import 'recent_announcement_list.dart';

class RecentAnnouncement extends StatelessWidget {
  const RecentAnnouncement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Recent Announcement",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.w300,
              color: headingColor),
        ),
        const SizedBox(
          height: 8,
        ),
        ...List.generate(announcementList.length, (index) => RecentAnnouncementList(
            announcement: announcementList[index],
            press: (){},
          ),),
      ],
    );
  }
}
