import 'package:flutter/material.dart';

import '../../models/announcement.dart';

class DesktopRecentAnnouncementList extends StatelessWidget {
  const DesktopRecentAnnouncementList({
    super.key, required this.announcement, required this.press,
  });

    final Announcement announcement;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4),
        child: SizedBox(
          height: 200,
          width: double.infinity,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.asset(
                  announcement.image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        const Color(0xFF343434).withOpacity(0.15),
                        const Color(0xFF343434).withOpacity(0.6),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 10,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.centerStart,
                          child: Text(
                            announcement.title,
                            style: const TextStyle(
                                fontSize:
                                    14,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}