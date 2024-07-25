
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/all_expenses_item_model.dart';
import 'package:responsive_dashboard/utils/app_style.dart';
import 'package:responsive_dashboard/widgets/all_expenses_item_header.dart';

class InActiveSelectedItem extends StatelessWidget {
  const InActiveSelectedItem({
    super.key,
    required this.itemmodel,
  });

  final AllExpensesItemModel itemmodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
          side: const BorderSide(
            width: 1,
            color: Color(0xfff1f1f1),
          ),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            image: itemmodel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemmodel.title,
            style: AppStyle.styleMeduinm16,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemmodel.date,
            style: AppStyle.stylesRegular14,
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemmodel.price,
            style: AppStyle.stylesemiBold24,
          )
        ],
      ),
    );
  }
}

class ActiveSelectedItem extends StatelessWidget {
  const ActiveSelectedItem({
    super.key,
    required this.itemmodel,
  });

  final AllExpensesItemModel itemmodel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      decoration: ShapeDecoration(
        color: const Color(0xff4db7f2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AllExpensesItemHeader(
            imageBackgroundColor: Colors.white.withOpacity(0.1),
            imageColor: Colors.white,
            image: itemmodel.image,
          ),
          const SizedBox(
            height: 34,
          ),
          Text(
            itemmodel.title,
            style: AppStyle.styleMeduinm16.copyWith(
              color: Colors.white
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            itemmodel.date,
            style: AppStyle.stylesRegular14.copyWith(
              color: const Color(0xfffafafa)
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text(
            itemmodel.price,
            style: AppStyle.stylesemiBold24.copyWith(
              color: Colors.white
            ),
          )
        ],
      ),
    );
  }
}
