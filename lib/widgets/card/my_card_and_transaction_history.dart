import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_background_container.dart';
import 'package:responsive_dashboard/widgets/my_card_section.dart';
import 'package:responsive_dashboard/widgets/transaction/transaction_history.dart';

class MyCardAndTransactionHistory extends StatelessWidget {
  const MyCardAndTransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
     return const CustomBackgroundContainer(
      child: Column(
        children: [
          MyCardSection(),
          Divider(
            color: Color(0XFFF1F1F1),
            height: 20 + 20, 
          ),
          TransactionHistory(),
        ],
      ),
    );
  }
}