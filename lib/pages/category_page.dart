import 'package:flutter/material.dart';

import '../common/text.dart';
import '../widgets/transcation_card.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({required this.categoryTitle, super.key});
  final String categoryTitle;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: CustomText(
          text: categoryTitle,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: false,
        leading: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: const Icon(Icons.arrow_back)),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CustomText(text: 'All Transaction'),
                  ElevatedButton(onPressed: () {}, child: const Text('Search')),
                ],
              ),
            ),
            const Divider(),
            TrasactionList(),
          ],
        ),
      ),
    );
  }
}

class TrasactionList extends StatelessWidget {
  TrasactionList({super.key});
  final List<Map<String, dynamic>> data = [
    {
      'category': 'Shopping',
      'amount': 80,
      'month': 'Jan',
      'description': 'Bag'
    },
    {
      'category': 'Shopping',
      'amount': 80,
      'month': 'Jan',
      'description': 'Bag'
    },
    {
      'category': 'Education',
      'amount': 80,
      'month': 'Jan',
      'description': 'Paid Fee of first semester along with the exam fee '
    },
    {
      'category': 'Education',
      'amount': 80,
      'month': 'Jan',
      'description':
          'Paid addimission fee for the bachelor in college with some additional charges. Paid addimission fee for the bachelor in college with some additional charges. Paid addimission fee for the bachelor in college with some additional charges'
    },
    {
      'category': 'Shopping',
      'amount': 80,
      'month': 'Jan',
      'description': 'Bag'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) => TranscationCard(
          data[index],
        ),
      ),
    );
  }
}
