import 'package:flutter/material.dart';
import 'package:insurance_app/models/question.dart';

import '../../constant.dart';
import '../../models/categorie.dart';
import '../../question/question_screen.dart';
import '../../size_config.dart';
import 'mobile_categories_list.dart';

class MobileCategoriesContainer extends StatelessWidget {
  const MobileCategoriesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Categories",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(18) ,
              fontWeight: FontWeight.w600,
              color: headingColor),
        ),
        const SizedBox(
          height: 16,
        ),
        ...List.generate(categorieList.length, (index) => MobileCategoriesList(
            categorie: categorieList[index],
            press: ()=> Navigator.pushNamed(context, QuestionScreen.routeName, arguments: QuestionDetailArgument(question: questionList[index])),
          ),),
        
      ],
    );
  }
}