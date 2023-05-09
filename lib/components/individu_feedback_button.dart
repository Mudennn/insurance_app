import 'package:flutter/material.dart';

import '../constant.dart';
import '../size_config.dart';

class IndividuFeedbackBtn extends StatelessWidget {
  const IndividuFeedbackBtn({super.key, required this.text, this.press});

final String text;
  final VoidCallback? press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: getProportionateScreenHeight(56),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: buttonColor),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(fontSize: getProportionateScreenWidth(18), color: Colors.white),
        ),
      ),
    );
  }
}