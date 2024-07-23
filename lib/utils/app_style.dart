import 'package:flutter/material.dart';

abstract class AppStyle{
  static const TextStyle styleRegular16 = TextStyle(
    color: Color(0xff064061),
    fontSize: 16 ,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400
  ); 
  static const TextStyle styleBold16 = TextStyle(
    color: Color(0xff4EB7F2),
    fontSize: 16 ,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w700
  ); 
    static const TextStyle styleMeduinm16 = TextStyle(
    color: Color(0xff064061),
    fontSize: 16 ,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500
  ); 
      static const TextStyle styleMeduinm20 = TextStyle(
    color: Color(0xffffffff),
    fontSize: 20,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w500
  ); 
    static const TextStyle stylesemiBold16 = TextStyle(
    color: Color(0xff064061),
    fontSize: 16 ,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600
  ); 
  static const TextStyle stylesemiBold20 = TextStyle(
    color: Color(0xff064061),
    fontSize: 20 ,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600
  ); 
  static const TextStyle stylesRegular12 = TextStyle(
    color: Color(0xffAAAAAA),
    fontSize: 12,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400
  );
    static const TextStyle stylesRegular14 = TextStyle(
    color: Color(0xffAAAAAA),
    fontSize: 14,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w400
  );
  static const TextStyle stylesemiBold24 = TextStyle(
    color: Color(0xff4EB7F2),
    fontSize: 24 ,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600
  );
  static const TextStyle stylesemiBold18 = TextStyle(
    color: Color(0xffffffff),
    fontSize: 18,
    fontFamily: "Montserrat",
    fontWeight: FontWeight.w600
  );  
}