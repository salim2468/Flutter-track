import 'package:flutter/material.dart';
import 'package:flutter_track/pages/auth/login_page.dart';
import 'package:flutter_track/utils/utils.dart';

import '../../common/button.dart';
import '../../common/text.dart';
import '../../common/text_form_field.dart';
import '../../utils/validators/validator.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    register() {
      if (_registerFormKey.currentState!.validate()) {
        navigateToWithReplacement(context, LoginPage());
      }
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Form(
              key: _registerFormKey,
              child: Column(
                children: [
                  CustomTextFormField(
                    label: 'Name',
                    bottomMargin: 8,
                    topMargin: 8,
                    hintText: 'Name',
                    controller: _nameController,
                    validator: Validator.nameValidator,
                  ),
                  CustomTextFormField(
                    label: 'Email',
                    bottomMargin: 8,
                    topMargin: 8,
                    hintText: 'Email',
                    controller: _emailController,
                    validator: Validator.emailValidator,
                  ),
                  CustomTextFormField(
                    label: 'Password',
                    bottomMargin: 8,
                    topMargin: 8,
                    hintText: 'Password',
                    controller: _passwordController,
                    validator: Validator.passwordValidator,
                  ),
                  CustomButton(
                    text: 'Register',
                    onPressed: register,
                  ),
                  Row(
                    children: [
                      const CustomText(text: 'Already have Account,'),
                      CustomText(
                        text: 'Sign in',
                        onPressed: () {
                          navigateToWithReplacement(context, LoginPage());
                        },
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
