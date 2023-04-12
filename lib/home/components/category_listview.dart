import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/categorie.dart';
import '../../models/question.dart';
import '../../question/question_screen.dart';
import '../../size_config.dart';
import 'homepage_category_list.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Text(
          "Category",
          style: TextStyle(
              fontSize: getProportionateScreenWidth(16),
              fontWeight: FontWeight.w300,
              color: headingColor),
        ),
        SizedBox(
          height: getProportionateScreenHeight(8),
        ),
        SizedBox(
          height: 120,
          width: double.maxFinite,
          // margin: EdgeInsets.only(left: getProportionateScreenWidth(20)),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categorieList.length,
              itemBuilder: (context, index) {
                return HomepageCagetoryList(
                    categorie: categorieList[index],
                    press: () => Navigator.pushNamed(
                        context, QuestionScreen.routeName,
                        arguments: QuestionDetailArgument(
                            question: questionList[index])));
              }),
        ),
      ],
    );
  }
}
