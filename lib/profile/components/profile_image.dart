import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({
    super.key,
    required this.profileHeight2,
    required this.profileHeight,
  });

  final double profileHeight2;
  final double profileHeight;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleAvatar(
        radius: profileHeight2 / 2,
        backgroundColor: Colors.white,
        child: CircleAvatar(
          radius: profileHeight / 2,
          backgroundColor: Colors.grey,
          backgroundImage:
              Image.asset("assets/images/Mountain1.jpg").image,
        ),
      ),
    );
  }
}