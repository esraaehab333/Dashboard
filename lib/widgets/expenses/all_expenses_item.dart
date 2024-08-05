import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/widgets/expenses/inactive_and_active_selected_item.dart';

class AllExpensesItem extends StatelessWidget {
  const AllExpensesItem(
      {super.key, required this.itemmodel, required this.iSelected});
  final AllExpensesItemModel itemmodel;
  final bool iSelected;
  @override
  Widget build(BuildContext context) {
    return iSelected
        ? ActiveSelectedItem(itemmodel: itemmodel)
        : InActiveSelectedItem(itemmodel: itemmodel);
  }
}
