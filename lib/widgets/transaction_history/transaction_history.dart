import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/transaction/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const TransactionHistoryHeader(),
        const SizedBox(
          height: 16,
        ),
        Text(
          "13 April 2022",
          style:AppStyle.styleMeduinm16(context)
        ),
        const SizedBox(height: 12,),
        const TransactionHistoryListView()
      ],
    );
  }
}

