import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/resonsive_font_size.dart';

abstract class AppStyle {
  static TextStyle styleBold16(context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w700,
      );

  static TextStyle styleMeduinm16(context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleMedium20(BuildContext context) => TextStyle(
        color: const Color(0xffffffff),
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w500,
      );

  static TextStyle styleSemiBold16(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold20(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: getResponsiveFontSize(context, fontSize: 20),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular12(BuildContext context) => TextStyle(
        color: const Color(0xffAAAAAA),
        fontSize: getResponsiveFontSize(context, fontSize: 12),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleRegular14(BuildContext context) => TextStyle(
        color: const Color(0xffAAAAAA),
        fontSize: getResponsiveFontSize(context, fontSize: 14),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
      );

  static TextStyle styleSemiBold24(BuildContext context) => TextStyle(
        color: const Color(0xff4EB7F2),
        fontSize: getResponsiveFontSize(context, fontSize: 24),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleSemiBold18(BuildContext context) => TextStyle(
        color: const Color(0xffffffff),
        fontSize: getResponsiveFontSize(context, fontSize: 18),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w600,
      );

  static TextStyle styleRegular16(BuildContext context) => TextStyle(
        color: const Color(0xff064061),
        fontSize: getResponsiveFontSize(context, fontSize: 16),
        fontFamily: "Montserrat",
        fontWeight: FontWeight.w400,
      );
}
