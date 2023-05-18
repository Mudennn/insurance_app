import 'package:flutter/material.dart';
import 'package:insurance_app/models/question.dart';

import '../../constant.dart';
import '../../models/categorie.dart';
import '../../question/question_screen.dart';
import 'desktop_categories_list.dart';

class DesktopCategoriesContainer extends StatelessWidget {
  const DesktopCategoriesContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       const Text(
          "Categories",
          style: TextStyle(
              fontSize:  28,
              fontWeight: FontWeight.w600,
              color: headingColor),
        ),
        const SizedBox(
          height: 16,
        ),
        ...List.generate(categorieList.length, (index) => DesktopCategoriesList(
            categorie: categorieList[index],
            press: ()=> Navigator.pushNamed(context, QuestionScreen.routeName, arguments: QuestionDetailArgument(question: questionList[index])),
          ),),
        
      ],
    );
  }
}