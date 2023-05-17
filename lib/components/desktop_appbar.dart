import 'package:flutter/material.dart';

import '../constant.dart';

class DesktopAppBar extends StatelessWidget implements PreferredSizeWidget {
  const DesktopAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: buttonColor),
      child: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 25 / 2.5),
        child: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("data", style: TextStyle(color: Colors.white),)
                ],
            )
          ],
        ) 
        ,),
      ),
    );
  }
  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        80,
      );
}
