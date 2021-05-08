import 'package:bmi_app/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.buttonText, required this.onPress});

  final String buttonText;
  final Function() onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(top: Sizes.dimens_10),
        width: double.infinity,
        height: Sizes.dimens_80,
        color: AppColors.globalButtonColor,
        child: Center(
          child: Text(buttonText,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline4),
        ),
      ),
    );
  }
}
