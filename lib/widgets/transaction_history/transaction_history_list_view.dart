import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/widgets/transaction/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static List<TransactionModel> items = [
    const TransactionModel(
        title: 'Cash Withdrawal',
        date: '13 Apr, 2022',
        amount: r'$20,129',
        isWithDrawal: true),
    const TransactionModel(
      title: 'Landing Page project',
      date: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isWithDrawal: true,
    ),
    const TransactionModel(
      title: 'Mobile App project',
      date: '13 Apr, 2022',
      amount: r'$20,129',
      isWithDrawal: true,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: items.map((e)=>TransactionItem(transactionModel: e)).toList(),
    );
  }
}
