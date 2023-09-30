import 'package:flutter/material.dart';
import 'package:flutter_track/pages/view_all_page.dart';

import '../common/text.dart';
import '../widgets/dashboard/category_list.dart';
import '../widgets/dashboard/top_container.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [
        const TopContainer(),
        const SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const CustomText(
                text: 'Transaction',
                fontWeight: FontWeight.w700,
              ),
              CustomText(
                text: 'View All',
                fontWeight: FontWeight.w700,
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => const ViewAllPage()));
                },
              ),
            ],
          ),
        ),
        CategoryListWidget(),
      ],
    )));
  }
}
