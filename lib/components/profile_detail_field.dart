import 'package:flutter/material.dart';

import '../constant.dart';

class ProfileDetailField extends StatelessWidget {
  const ProfileDetailField({
    super.key, required this.title, required this.hint,
  });

  final String title;
  final String hint;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 16, color: headingColor),
          ),
          Container(
            margin: const EdgeInsets.only(top: 8),
            padding: const EdgeInsets.only(left: 14, top: 15),
            height: 54,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey, width: 1.0),
                borderRadius: BorderRadius.circular(12)),
            child: Text(hint),
          ),
        ],
      ),
    );
  }
}