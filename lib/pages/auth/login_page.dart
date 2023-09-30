import 'package:flutter/material.dart';
import 'package:flutter_track/pages/dashboard_page.dart';
import 'package:flutter_track/utils/validators/validator.dart';

import '../../common/button.dart';
import '../../common/text.dart';
import '../../common/text_form_field.dart';
import '../../utils/utils.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final _loginFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    login() {
      if (_loginFormKey.currentState!.validate()) {
        navigateToWithReplacement(context, const DashboardPage());
      }
    }

    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 10),
            child: Form(
              key: _loginFormKey,
              child: Column(
                children: [
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
                      validator: Validator.passwordValidator),
                  CustomButton(
                    marginVertical: 8,
                    text: 'Login',
                    onPressed: login,
                  ),
                  Row(
                    children: [
                      CustomText(
                        text: 'No Account Yet, ',
                        color: Colors.grey.shade700,
                        fontSize: 14,
                      ),
                      CustomText(
                        fontSize: 16,
                        text: 'Create One',
                        onPressed: () {
                          navigateTo(context, const Placeholder());
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
