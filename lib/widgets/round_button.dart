import 'package:bmi_app/constants/sizes.dart';

import '../style/colors.dart';
import 'package:flutter/material.dart';

class RoundButton extends StatelessWidget {
  final IconData iconData;
  final Function() onTapped;
  final Function(TapDownDetails) onTappedDown;
  final Function(TapUpDetails) onTappedUp;
  RoundButton(
      {required this.iconData,
      required this.onTapped,
      required this.onTappedDown,
      required this.onTappedUp});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.counterButtonColor,
        ),
        width: Sizes.dimens_60,
        height: Sizes.dimens_60,
        child: Icon(
          iconData,
          color: AppColors.counterIconColor,
        ),
      ),
      onTap: onTapped,
      onTapDown: onTappedDown,
      onTapUp: onTappedUp,
    );
  }
}
