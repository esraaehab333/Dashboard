import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/latest_transaction_list_view.dart';

class LatestTransction extends StatelessWidget {
  const LatestTransction({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Latest Transaction",
          style: AppStyle.styleMeduinm16(context),
        ),
        const SizedBox(
          height: 16,
        ),
        const LatestTransactionListView()
      ],
    );
  }
}
