import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../models/announcement.dart';
import 'desktop_recent_announcement_list.dart';

class DesktopRecentAnnouncement extends StatelessWidget {
  const DesktopRecentAnnouncement({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "Recent Announcement",
          style: TextStyle(
              fontSize: 16, fontWeight: FontWeight.w300, color: headingColor),
        ),
        const SizedBox(
          height: 8,
        ),
        ...List.generate(
          announcementList.length,
          (index) => DesktopRecentAnnouncementList(
            announcement: announcementList[index],
            press: () {},
          ),
        ),
      ],
    );
  }
}

