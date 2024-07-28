import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/transaction_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.transactionModel});
  final TransactionModel transactionModel;
  @override
  Widget build(BuildContext context) {
     return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Card(
        color: const Color(0xffFAFAFA),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: ListTile(
          title: Text(
            transactionModel.title,
            style: AppStyle.stylesemiBold16,
          ),
          subtitle: Text(
            transactionModel.date,
            style: AppStyle.styleRegular16
                .copyWith(color: const Color(0xffAAAAAA)),
          ),
          trailing: Text(
            transactionModel.amount,
            style: AppStyle.stylesemiBold18.copyWith(
                color: transactionModel.isWithDrawal
                    ? const Color(0xff7DD97B)
                    : const Color(0xffF3735E)),
          ),
        ),
      ),
    );
  }
}
