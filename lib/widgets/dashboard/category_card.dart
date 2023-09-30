import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../common/text.dart';
import '../../constant/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard(
      {super.key,
      required this.title,
      required this.amount,
      required this.index});
  final String title;
  final int amount;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(
            spreadRadius: 1,
            blurRadius: 4,
            color: Colors.grey,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  gradient: LinearGradient(
                    colors: [
                      categoryList[index]['start'],
                      categoryList[index]['end']
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: const Icon(
                  Icons.shop,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              CustomText(text: title),
            ],
          ),
          Column(
            children: [
              CustomText(
                text: '\$ $amount',
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: DateFormat('MMMM').format(
                  DateTime.now(),
                ),
                fontSize: 12,
              ),
            ],
          )
        ],
      ),
    );
  }
}
