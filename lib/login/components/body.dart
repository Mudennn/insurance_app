import 'package:flutter/material.dart';

import '../../../constant.dart';

import '../../size_config.dart';
import 'signin_form.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: SizeConfig.screenHeight * 0.1,
                // height: getProportionateScreenHeight(20),
              ),
              // Tittle
              const Text(
                "Welcome Back",
                style: TextStyle(
                    color: headingColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold),
              ),
              const Text(
                "Sign in with your email and password",
                textAlign: TextAlign.center,
                style: TextStyle(color: textColor),
              ),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              // Sign Form
              const SignForm(),
              SizedBox(
                height: SizeConfig.screenHeight * 0.08,
              ),
              // Social media container
              
              
            ],
          ),
        ),
      )),
    );
  }
}