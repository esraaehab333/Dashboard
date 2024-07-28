import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/transaction_history_header.dart';
import 'package:responsive_dashboard/widgets/transaction_history_list_view.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TransactionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text(
          "13 April 2022",
          style:TextStyle(
            color: Color(0xffAAAAAA),
            fontSize: 16,
            fontFamily: "Montserrat",
            fontWeight: FontWeight.w500,
            height: 0,
          ),
        ),
        TransactionHistoryListView()
      ],
    );
  }
}

