import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item.dart';

class AllExpensesItemListView extends StatefulWidget {
  const AllExpensesItemListView({super.key});

  @override
  State<AllExpensesItemListView> createState() =>
      _AllExpensesItemListViewState();
}

class _AllExpensesItemListViewState extends State<AllExpensesItemListView> {
  final item = [
    const AllExpensesItemModel(
      image: Assets.imagesBalance,
      title: "Balance",
      date: "April 2022",
      price: r"$20.129",
    ),
    const AllExpensesItemModel(
      image: Assets.imagesIncome,
      title: "Income",
      date: "April 2022",
      price: r"$20.129",
    ),
    const AllExpensesItemModel(
      image: Assets.imagesExpenses,
      title: "Expenses",
      date: "April 2022",
      price: r"$20.129",
    )
  ];
  int selectedindex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
        children: item.asMap().entries.map((e) {
      int index = e.key;
      var item = e.value;
      if (index == 1) {
        return Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(index);
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: AllExpensesItem(
                itemmodel: item,
                iSelected: selectedindex == index,
              ),
            ),
          ),
        );
      } else {
        return Expanded(
          
          child: GestureDetector(
             onTap: (){
              updateIndex(index);
            },
            child: AllExpensesItem(
            itemmodel: item,
            iSelected: selectedindex == index,
          ),
          ),
        );
      }
    }).toList());
  }
  
  void updateIndex(int index) {
    setState(() {
     selectedindex = index; 
    });
  }
}
