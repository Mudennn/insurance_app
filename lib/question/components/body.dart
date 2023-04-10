import 'package:flutter/material.dart';
import 'package:insurance_app/size_config.dart';

import '../../constant.dart';
import '../../models/question.dart';

class Body extends StatelessWidget {
  const Body({super.key, required this.question});
  final Question question;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20), vertical: getProportionateScreenWidth(16)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            height: 144,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              image: DecorationImage(image: AssetImage(question.image), fit: BoxFit.cover)
            ),
          ),
          const SizedBox(height: 8,),
          Text(question.title, style:const TextStyle(color: headingColor, fontSize: 16, fontWeight: FontWeight.w500),),
          const SizedBox(height: 8,),
          Text(question.answer)
        ],
      ),
    );
  }
}