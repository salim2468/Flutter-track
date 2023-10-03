import '../../constant/strings.dart';

class Validator {
  static String? emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter email';
    }
    if (!AppString.emailRegEx.hasMatch(value)) {
      return 'Please enter valid email';
    }
    return null;
  }

  static String? passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter password';
    }
    if (value.length < 8) {
      return 'Password should be atleast 8 character';
    }
    return null;
  }

  static String? nameValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter name';
    }
    if (value.length < 3) {
      return 'Password should be atleast 3 character';
    }
    return null;
  }
}
