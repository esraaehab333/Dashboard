import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/all_expenses.dart';
import '../widgets/custom_drawer.dart';

class DashboardDektopLayout extends StatelessWidget {
  const DashboardDektopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
          child: CustomDrawer(),
        ),
        SizedBox(
          width: 32,
        ),
        Expanded(
          flex: 2,
          child: Column(
            children: [
              Expanded(
                child: AllExpenses(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
