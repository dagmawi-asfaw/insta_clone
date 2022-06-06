import 'package:flutter/material.dart';

import 'color_constants.dart';
import 'widget_constants.dart';

ThemeData appThemeData = ThemeData(
  primaryColor: AppColors.kPrimaryColor,
  scaffoldBackgroundColor: AppColors.kBlack,
  appBarTheme: AppBarTheme(
    elevation: 0,
    centerTitle: true,
    backgroundColor: AppColors.kPrimaryColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(
        kBorderRadius,
      ),
    ),
  ),
);

ButtonStyle kPrimaryButtonStyle = ButtonStyle(
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(kBorderRadius),
    ),
  ),
  backgroundColor: MaterialStateProperty.resolveWith(
    (states) {
      if (states.contains(MaterialState.pressed)) {
        return AppColors.kPrimaryColor;
      } else if (states.contains(MaterialState.disabled)) {
        return AppColors.kPrimaryColor.withOpacity(0.5);
      }
      return AppColors.kPrimaryColor;
    },
  ),
  elevation: MaterialStateProperty.resolveWith((states) {
    if (states.contains(MaterialState.pressed)) {
      return 0;
    }
    return 2;
  }),
);
