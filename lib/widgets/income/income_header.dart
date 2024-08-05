
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
         Text(
          "Income",
          style: AppStyle.styleSemiBold20(context),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: const BorderSide(
                width: 1,
                color: Color(0xfff1f1f1),
              ),
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child:  Row(
            children: [
              Text(
                "Monthly",
                style: AppStyle.styleMeduinm16(context),
              ),
              const SizedBox(
                width: 16,
              ),
              const Icon(Icons.arrow_drop_down)
            ],
          ),
        )
      ],
    );
  }
}
