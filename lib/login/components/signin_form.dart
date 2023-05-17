
import 'package:flutter/material.dart';

import '../../../constant.dart';
import '../../../size_config.dart';
import '../../components/form_error.dart';
import '../../components/main_page.dart';
import '../../components/sign_in_button.dart';
import '../../responsive.dart';

// Sign in form page untuk masukkan email dan password

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  late String email;
  late String password;
  bool remember = false;


  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFromField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            buildPasswordFormField(),
            SizedBox(
              height: getProportionateScreenHeight(30),
            ),
            Row(
              children: [
                Checkbox(
                  value: remember,
                  activeColor: buttonColor,
                  onChanged: (value) {
                    setState(() {
                      remember = value!;
                    });
                  },
                ),
                const Text("Remember me"),
                const Spacer(),
                // GestureDetector(
                //   onTap: () => Navigator.popAndPushNamed(
                //       context, ForgotPasswordPage.routeName),
                //   child: Text(
                //     "Forgot Password",
                //     style: TextStyle(decoration: TextDecoration.underline),
                //   ),
                // )
              ],
            ),
            FormError(errors: errors),
            SizedBox(
              height: getProportionateScreenHeight(20),
            ),
            SigninButton(
              text: 'Login',
              press: () {
                if (_formKey.currentState!.validate()) {
                  _formKey.currentState?.save();
                  // If All are valid then go to success screen
                  Navigator.popAndPushNamed(
                      context, MainPage.routeName);
                }
              },
            ),
          ],
        ));
  }

//Password form field
  TextFormField buildPasswordFormField() {
    return TextFormField(
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(passNullError)) {
          setState(() {
            errors.remove(passNullError);
          });
        } else if (value.length >= 8 && errors.contains(shortPassError)) {
          setState(() {
            errors.remove(shortPassError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(passNullError)) {
          setState(() {
            errors.add(passNullError);
          });
          return "";
        } else if (value.length < 8 && !errors.contains(shortPassError)) {
          setState(() {
            errors.add(shortPassError);
          });
          return "";
        }
        return null;
      },
      obscureText: true,
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Enter your password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: Padding(
          padding: !Responsive.isDesktop(context) ? EdgeInsets.fromLTRB(0, getProportionateScreenWidth(20),
              getProportionateScreenWidth(20), getProportionateScreenWidth(20)) : EdgeInsets.fromLTRB(0, getProportionateScreenWidth(0),
              getProportionateScreenWidth(0), getProportionateScreenWidth(0)),
          child: const Icon(Icons.lock_outline_rounded),
        ),
      ),
    );
  }

// Email Form Field
  TextFormField buildEmailFromField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && errors.contains(emailNullError)) {
          setState(() {
            errors.remove(emailNullError);
          });
        } else if (emailValidatorRegExp.hasMatch(value) &&
            errors.contains(invalidEmailError)) {
          setState(() {
            errors.remove(invalidEmailError);
          });
        }
        return;
      },
      validator: (value) {
        if (value!.isEmpty && !errors.contains(emailNullError)) {
          setState(() {
            errors.add(emailNullError);
          });
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !errors.contains(invalidEmailError)) {
          setState(() {
            errors.add(invalidEmailError);
          });
          return "";
        }
        return null;
      },
      
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        // suffixIcon: CustomeSurffixIcon(),
        suffixIcon: Padding(
          padding: !Responsive.isDesktop(context) ? EdgeInsets.fromLTRB(0, getProportionateScreenWidth(20),
              getProportionateScreenWidth(20), getProportionateScreenWidth(20)) : EdgeInsets.fromLTRB(0, getProportionateScreenWidth(0),
              getProportionateScreenWidth(0), getProportionateScreenWidth(0)),
          child: const Icon(Icons.email_outlined,),
          
        ),
        
      ),
      
    );
  }
}
