import 'package:flutter/material.dart';
import '../../constant.dart';
import '../../models/categorie.dart';

class DesktopHomepageCagetoryList extends StatelessWidget {
  const DesktopHomepageCagetoryList({
    super.key, required this.categorie, required this.press,
  });

  final Categorie categorie;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container( margin: const EdgeInsets.only(right: 8),
        child: Column(
              children: [
        Container(
         
            width: 80,
            height: 80,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(
                      categorie.image),
                  fit: BoxFit.cover),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            categorie.title,
            style: const TextStyle(color: textColor),
          ),
              ],
            ),
      ),
    );
  }
}
