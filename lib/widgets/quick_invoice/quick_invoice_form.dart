import 'package:flutter/material.dart';
import 'package:responsive_dashboard/widgets/custom_button.dart';
import 'package:responsive_dashboard/widgets/title_text_filed.dart';

class QuickInvoiceForm extends StatelessWidget {
  const QuickInvoiceForm({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitleTextFiled(
                  title: "Customer name", hint: "Type customer name"),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFiled(
                  title: "Customer Email", hint: "Type customer email"),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: TitleTextFiled(
                  title: "Item name", hint: "Type customer name"),
            ),
            SizedBox(
              width: 16,
            ),
            Expanded(
              child: TitleTextFiled(title: "Customer Email", hint: "USD"),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            Expanded(
              child: CustomButton(
                backgroundColor: Colors.transparent,
                textColor: Color(0xff4db7f2),
              ),
            ),
            Expanded(
              child: CustomButton(),
            )
          ],
        )
      ],
    );
  }
}
