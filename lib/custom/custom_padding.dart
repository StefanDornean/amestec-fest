import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomPadding extends StatelessWidget {
  const CustomPadding({
    Key? key,
    required this.screenSize,
    required this.childWidget,
    Color? this.bgColor = Colors.transparent,
    num this.top = paddingTop,
    num this.bottom = paddingBottom,
    num this.left = paddingLeft,
    num this.topSmall = paddingTopSmall,
    num this.bottomSmall = paddingBottomSmall,
    num this.leftSmall = paddingLeftSmall,
  }) : super(key: key);

  final Size screenSize;
  final Widget childWidget;
  final Color? bgColor;

  final num top;
  final num left;
  final num bottom;

  final num topSmall;
  final num leftSmall;
  final num bottomSmall;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: this.bgColor,
        padding: EdgeInsets.only(
          top: screenSize.height /
              (ResponsiveWidget.isSmallScreen(context) ? topSmall : top),
          bottom: screenSize.height /
              (ResponsiveWidget.isSmallScreen(context) ? bottomSmall : bottom),
          left: screenSize.width /
              (ResponsiveWidget.isSmallScreen(context) ? leftSmall : left),
        ),
        width: screenSize.width,
        alignment: Alignment.centerLeft,
        child: childWidget);
  }
}
