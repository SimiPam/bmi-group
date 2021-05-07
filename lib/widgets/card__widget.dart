import 'package:bmi_app/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart';


class CardWidget extends StatelessWidget {
  
  final Widget cardChild;
  final Function() onPress;
  CardWidget({required this.cardChild, required this.onPress});
  

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.symmetric(
          vertical: Sizes.dimens_10,
          horizontal: Sizes.dimens_6,
        ),
        decoration: BoxDecoration(
          color: AppColors.cardColor,
          borderRadius: BorderRadius.circular(
            Sizes.dimens_10,
          ),
        ),
        child: cardChild,
      ),
    );
  }
}
