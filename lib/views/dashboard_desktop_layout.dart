import 'package:flutter/material.dart';
import '../widgets/custom_drawer.dart';

class DashboardDektopLayout extends StatelessWidget {
  const DashboardDektopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(child: CustomDrawer())
      ],
    );
  }
}