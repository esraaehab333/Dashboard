
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/expenses/all_expenses_and_quick_invoice_section.dart';
import 'package:responsive_dashboard/widgets/income/income_section.dart';
import 'package:responsive_dashboard/widgets/my_card_and_transaction_history.dart';

class DashboardMobileLayout extends StatelessWidget {
  const DashboardMobileLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          AllExpensesAndQuickInvoiceSection(),
          SizedBox(
            height: 24,
          ),
          MyCardAndTransactionHistory(),
          SizedBox(
            height: 24,
          ),
          IncomeSection()
        ],
      ),
    );
  }
}
