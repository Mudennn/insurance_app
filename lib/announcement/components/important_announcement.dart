import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../size_config.dart';

class ImportantAnnouncement extends StatelessWidget {
  const ImportantAnnouncement({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Important Announcement",
            style: TextStyle(
                fontSize: getProportionateScreenWidth(18),
                fontWeight: FontWeight.w600,
                color: headingColor)),
                SizedBox(height: getProportionateScreenHeight(8),),
        GestureDetector(
          onTap: () {},
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: SizedBox(
              height: getProportionateScreenHeight(200),
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      "assets/images/Mountain1.jpg",
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
                        padding: EdgeInsets.symmetric(
                          horizontal: getProportionateScreenWidth(10),
                          vertical: getProportionateScreenWidth(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Container(
                              alignment: AlignmentDirectional.centerStart,
                              child: Text(
                                "Title",
                                style: TextStyle(
                                    fontSize:
                                        getProportionateScreenWidth(14),
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
        ),
      ],
    );
  }
}