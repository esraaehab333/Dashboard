

import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

double getResponsiveFontSize( context , {required double fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsivefontSize = scaleFactor * fontSize;
  double lowerLimit = responsivefontSize * 0.8; 
  double upperLimit = responsivefontSize * 1.20; 
  double finalFontSize = responsivefontSize.clamp(lowerLimit, upperLimit);

  return finalFontSize;
}

double getScaleFactor(context) {
/*  var dispatcher = PlatformDispatcher.instance;
  var physicalWidth = dispatcher.views.first.physicalSize.width;
  var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  double width = physicalWidth / devicePixelRatio ; */
  double width = MediaQuery.sizeOf(context).width;
  if (width < SizeConfig.tablet) {
    return width / 550;
  } else if (width < SizeConfig.desktop) {
    return width / 1000;
  } else {
    return width / 1800; 
  }
}