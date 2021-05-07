import 'package:flutter/material.dart';

class IconContent extends StatelessWidget {
  IconContent(
      {required this.icon,
      required this.label,
      required this.iconColor,
      required this.rotate});

  final String label;
  final IconData icon;
  final Color iconColor;
  final double rotate;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Transform.rotate(
          angle: rotate,
          child: Icon(
            icon,
            color: iconColor,
            size: 80,
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          label,
          textAlign: TextAlign.center,
          style:
              Theme.of(context).textTheme.caption!.copyWith(color: iconColor),
        )
      ],
    );
  }
}
