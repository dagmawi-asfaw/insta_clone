import 'package:flutter/material.dart';

import '../shared.dart';

extension CustomTextTheme on TextTheme {
  TextStyle get bodyTextStyle1 {
    return const TextStyle(
      fontSize: 20.0,
      color: AppColors.kWhite,
      fontWeight: FontWeight.w500,
    );
  }

  TextStyle get bodyTextStyle2 {
    return TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w400,
      color: AppColors.kWhite.withOpacity(0.8),
    );
  }

  TextStyle get bodyTextStyle3Black {
    return const TextStyle(
      fontSize: 18.0,
      color: AppColors.kBlack,
      fontWeight: FontWeight.w500,
    );
  }
}
