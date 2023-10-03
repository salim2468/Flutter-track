import 'package:flutter/material.dart';
import 'package:flutter_track/pages/category_page.dart';

import '../../constant/category.dart';
import 'category_card.dart';

class CategoryListWidget extends StatelessWidget {
  CategoryListWidget({super.key});
  final List<int> amountList = [200, 300, 2, 4, 2];
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
            itemCount: categoryList.length,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => CategoryPage(
                          categoryTitle: categoryList[index]['title'])));
                },
                child: CategoryCard(
                    title: categoryList[index]['title'],
                    amount: amountList[index],
                    index: index),
              );
            }),
      ),
    );
  }
}
