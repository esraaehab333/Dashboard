import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_images.dart';
import 'package:responsive_dashboard/widgets/expenses/all_expenses_item.dart';

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
      children: [Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(0);
            },
            child: AllExpensesItem(
              itemmodel: item[0],
              iSelected: selectedindex == 0,
            ),
          ),
        ),
        SizedBox(width: 8,),
        Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(1);
            },
            child: AllExpensesItem(
              itemmodel: item[1],
              iSelected: selectedindex == 1,
            ),
          ),
        ),
        SizedBox(width: 8,),
        Expanded(
          child: GestureDetector(
            onTap: (){
              updateIndex(2);
            },
            child: AllExpensesItem(
              itemmodel: item[2],
              iSelected: selectedindex == 2,
            ),
          ),
        )],
    );
  }
  
  void updateIndex(int index) {
    setState(() {
     selectedindex = index; 
    });
  }
}
