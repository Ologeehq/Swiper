import 'package:flutter/material.dart';
import 'package:swipar/core/core_presentation/styles.dart' as Style;

class ProfileIcon extends StatelessWidget {
  const ProfileIcon({
    Key key,
    this.iconSize = 60,
    this.withMargin = true,
    this.radius = 115,
    this.borderWidth = 2.24,
  }) : super(key: key);
  final bool withMargin;
  final double radius;
  final double iconSize;
  final double borderWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: withMargin
          ? EdgeInsets.only(
              top: 40,
            )
          : null,
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Style.themeBlue.withOpacity(0.0307),
        border: Border.all(
          color: Style.themeBlue,
          width: borderWidth,
        ),
      ),
      child: Icon(
        Icons.person,
        size: iconSize,
        color: Style.themeBlue,
      ),
    );
  }
}
