
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class RangeOption extends StatelessWidget {
  const RangeOption({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
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
      child:  Row(
        children: [
          Text(
            "Monthly",
            style: AppStyle.styleMeduinm16(context),
          ),
          const SizedBox(width: 18,),
          const Icon(
            Icons.arrow_drop_down,
            color: Color(0xff064061),
          ),
        ],
      ),
    );
  }
}
