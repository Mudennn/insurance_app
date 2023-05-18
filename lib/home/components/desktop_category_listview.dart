import 'package:flutter/material.dart';

import '../../constant.dart';
import '../../models/categorie.dart';
import '../../models/question.dart';
import '../../question/question_screen.dart';
import 'desktop_homepage_category_list.dart';


class DesktopCategoryListView extends StatelessWidget {
  const DesktopCategoryListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
       const Text(
          "Category",
          style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.w300,
              color: headingColor),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          height: 120,
          width: double.maxFinite,
          // margin: EdgeInsets.only(left: getProportionateScreenWidth(20)),
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: categorieList.length,
              itemBuilder: (context, index) {
                return DesktopHomepageCagetoryList(
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