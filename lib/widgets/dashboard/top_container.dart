import 'package:flutter/material.dart';

import '../../common/text.dart';
import '../../pages/add_page.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: const BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(14),
            bottomRight: Radius.circular(14),
          ),
          boxShadow: [
            BoxShadow(
                blurRadius: 2,
                spreadRadius: 1,
                color: Colors.black,
                offset: Offset(0, 2))
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              InkWell(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) => AddPage()));
                },
                child: const CircleAvatar(
                  backgroundColor: Colors.green,
                  radius: 14,
                ),
              ),
              const SizedBox(
                width: 8,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jhon',
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    'Welcome Back',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const CustomText(
            text: 'Expense',
            color: Colors.white,
          ),
          const CustomText(
            text: '\$20',
            color: Colors.white,
            fontSize: 30,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Card(
                icon: Icons.arrow_upward,
                title: 'Income',
                value: 20,
                color: Colors.green,
              ),
              Card(
                icon: Icons.arrow_upward,
                title: 'Expense',
                value: 20,
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({
    super.key,
    required this.icon,
    required this.title,
    required this.value,
    this.color,
  });

  final IconData icon;
  final String title;
  final int value;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.40,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          CircleAvatar(
            backgroundColor: color?.withOpacity(0.3),
            child: Icon(
              icon,
              color: color,
            ),
          ),
          const SizedBox(
            width: 8,
          ),
          Column(
            children: [
              CustomText(
                text: title,
                fontSize: 12,
                color: color,
              ),
              CustomText(
                text: '\$ $value',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              )
            ],
          )
        ],
      ),
    );
  }
}
