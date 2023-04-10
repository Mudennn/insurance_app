import 'package:flutter/material.dart';

class BackBtn extends StatelessWidget {
  const BackBtn({super.key, required this.iconData, required this.press});
 final IconData iconData;
  final GestureTapCallback press;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        // padding: const EdgeInsets.all(8),
        // decoration: BoxDecoration(
        //     color: Colors.white,
        //     borderRadius: BorderRadius.circular(50)),
        child: Icon(
          iconData,
          color: Colors.white,
        ),
      ),
    );
  }
}