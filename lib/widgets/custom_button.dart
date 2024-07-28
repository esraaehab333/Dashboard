import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.backgroundColor, this.textColor});
  final Color? backgroundColor ;
  final Color? textColor ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)
          ),
          backgroundColor:backgroundColor?? const Color(0xff4db7f2)
        ),
        child: Text(
          "Send Money",
          style: AppStyle.stylesemiBold18.copyWith(color: textColor),
        ),
      ),
    );
  }
}
