
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class TransactionHistoryHeader extends StatelessWidget {
  const TransactionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Transaction History",
          style: AppStyle.stylesemiBold20,
        ),
        Text(
          "See all",
          style: AppStyle.styleMeduinm16.copyWith(
            color: const Color(0xff4eb7f2),
          ),
        ),
      ],
    );
  }
}