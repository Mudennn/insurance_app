import 'package:flutter/material.dart';
import 'package:insurance_app/constant.dart';

import '../models/question.dart';
import 'back_button.dart';

// Question appbar - boleh tambah apa2 icon
class QuestionAppBar extends StatelessWidget implements PreferredSizeWidget {
  const QuestionAppBar(
      {super.key,
      this.title = '',
      this.leading,
      this.titleWidget,
      this.onActionTap,
      this.rightLeading,
      required this.question, this.mainTitle = ""});

  final String title;
  final String mainTitle;
  final Widget? leading;
  final Widget? rightLeading;
  final Widget? titleWidget;
  final VoidCallback? onActionTap;
  final Question question;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(color: buttonColor),
      child: SafeArea(
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 20, vertical: 25 / 2.5),
          child: Stack(
            children: [
              Positioned.fill(
                child: titleWidget == null
                    ? Center(
                        child: Text(
                          question.mainTitle,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.white),
                        ),
                      )
                    : Center(
                        child: titleWidget!,
                      ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  leading ??
                      BackBtn(
                        iconData: Icons.arrow_back_ios_new,
                        press: () => Navigator.pop(context),
                      ),
                  rightLeading == null
                      ? Container()
                      : GestureDetector(
                          onTap: onActionTap,
                          child: Container(
                            // padding: const EdgeInsets.all(8),
                            // decoration: BoxDecoration(
                            //     color: Colors.white.withOpacity(0.2),
                            //     borderRadius: BorderRadius.circular(50)),
                            child: rightLeading,
                          ),
                        )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size(
        double.maxFinite,
        80,
      );
}
