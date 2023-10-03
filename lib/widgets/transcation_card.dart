import 'package:flutter/material.dart';

import '../common/text.dart';

class TranscationCard extends StatelessWidget {
  const TranscationCard(this.expense, {super.key});
  final Map<String, dynamic> expense;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 8),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
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
        // crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: expense['category'],
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
                CustomText(
                  text: expense['description'],
                  maxLine: 3,
                  fontSize: 12,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              CustomText(
                text: expense['amount'].toString(),
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              CustomText(
                text: expense['month'],
                fontSize: 12,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
