import 'package:flutter/material.dart';

import '../../models/categorie.dart';
import '../../size_config.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({
    super.key, required this.categorie, required this.press,
  });

  final Categorie categorie;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
          onTap: press,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 4),
            child: SizedBox(
              height: getProportionateScreenHeight(144),
              width: double.infinity,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      categorie.image,
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
                                categorie.title,
                                style: TextStyle(
                                    fontSize: getProportionateScreenWidth(14),
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


