import 'package:explore/custom/custom_underline.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'custom_padding.dart';
import 'custom_text.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({
    Key? key,
    required this.screenSize,
    required this.text,
    Color? this.bgColor = Colors.transparent,
    Color? this.headerColor = textColor,
  }) : super(key: key);

  final Size screenSize;
  final String text;
  final Color? bgColor;
  final Color? headerColor;

  @override
  Widget build(BuildContext context) {
    return CustomPadding(
      screenSize: screenSize,
      top: paddingTopHeader,
      topSmall: paddingTopHeaderSmall,
      left: paddingLeftHeader,
      leftSmall: paddingLeftHeaderSmall,
      childWidget: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            text: text,
            color: headerColor,
            fontSize: headerFontSize,
            align: headerAlign,
            font: headerFont,
          ),
          CustomUnderline(color: headerColor)
        ],
      ),
      bgColor: this.bgColor,
    );

    // Container(
    //   color: this.bgColor,
    //   padding: EdgeInsets.only(
    //     top: screenSize.height /
    //         (ResponsiveWidget.isSmallScreen(context) ? 25 : 15),
    //     bottom: screenSize.height /
    //         (ResponsiveWidget.isSmallScreen(context) ? 40 : 20),
    //     left: ResponsiveWidget.isSmallScreen(context)
    //         ? 20
    //         : (screenSize.width * 0.25),
    //   ),
    //   width: screenSize.width,
    //   alignment: Alignment.centerLeft,
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       CustomText(
    //         text: text,
    //         color: headerColor,
    //         fontSize: headerFontSize,
    //         align: headerAlign,
    //         font: headerFont,
    //       ),
    //       CustomUnderline(color: headerColor)
    //     ],
    //   ),
    // );
  }
}
