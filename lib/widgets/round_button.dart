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
        width: 50.0,
        height: 50.0,
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
