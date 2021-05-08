import 'package:bmi_app/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../style/colors.dart';

class CardWidget extends StatelessWidget {
  final Widget cardChild;
  final Function()? onPress;
  final EdgeInsetsGeometry edge;
  final Color color;
  CardWidget(
      {required this.cardChild,
      this.onPress,
      required this.edge,
      required this.color});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: edge,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(
            Sizes.dimens_10,
          ),
        ),
        child: cardChild,
      ),
    );
  }
}
