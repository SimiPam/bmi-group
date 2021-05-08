import 'package:bmi_app/style/colors.dart';
import 'package:bmi_app/constants/sizes.dart';
import 'package:flutter/material.dart';

ThemeData myThemeData = ThemeData(
    primaryColor: AppColors.backgroundColor,
    scaffoldBackgroundColor: AppColors.backgroundColor,
    backgroundColor: AppColors.backgroundColor,
    textTheme: TextTheme(
      headline1: _resultHeading,
      headline2: _resultHeading2,
      headline3: _resultHeading3,
      headline4: _resultHeading4,
      caption: _counterHeading,
      bodyText1: _counterNumberHeading,
    ));

TextStyle _resultHeading = TextStyle(
  fontSize: Sizes.dimens_35,
  letterSpacing: Sizes.dimens_1_3,
  fontWeight: FontWeight.w600,
  color: AppColors.whiteColor,
);

TextStyle _counterHeading = TextStyle(
  fontWeight: FontWeight.w500,
  fontSize: Sizes.dimens_16,
  color: AppColors.counterTextColor,
);

TextStyle _counterNumberHeading = TextStyle(
  color: AppColors.whiteColor,
  fontWeight: FontWeight.w900,
  fontSize: Sizes.dimens_50,
);

TextStyle _resultHeading2 = TextStyle(
  color: AppColors.whiteColor,
  fontSize: Sizes.dimens_18,
);

TextStyle _resultHeading3 = TextStyle(
  color: AppColors.whiteColor,
  fontSize: Sizes.dimens_110,
  fontWeight: FontWeight.w700,
);

TextStyle _resultHeading4 = TextStyle(
  fontWeight: FontWeight.w700,
  letterSpacing: Sizes.dimens_1_2,
  fontSize: Sizes.dimens_20,
  color: Colors.white,
);
