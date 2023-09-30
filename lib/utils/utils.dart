import 'package:flutter/material.dart';

String formatDate(DateTime date) {
  return "${date.year}-${date.month}-${date.day}";
}

navigateTo(BuildContext context, Widget page) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => page));
}

navigateToWithReplacement(BuildContext context, Widget page) {
  Navigator.of(context)
      .pushReplacement(MaterialPageRoute(builder: (context) => page));
}
