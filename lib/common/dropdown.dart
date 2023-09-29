import 'dart:convert';

import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final Function(String) onPressed;
  final List<dynamic> list;

  const CustomDropDown({
    required this.onPressed,
    required this.list,
    super.key,
  });

  @override
  State<CustomDropDown> createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  dynamic selected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
          color: Colors.grey,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: DropdownButton(
        items: widget.list.map<DropdownMenuItem>((dynamic value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
        value: selected,
        onChanged: (selectedCategory) {
          selected = selectedCategory;
          widget.onPressed(selectedCategory as String);
          setState(() {});
        },
        isExpanded: true,
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
        underline: const SizedBox(),
      ),
    );
  }
}
