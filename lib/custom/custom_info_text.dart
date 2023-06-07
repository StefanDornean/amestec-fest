import 'package:explore/custom/custom_padding.dart';
import 'package:flutter/material.dart';

import '../custom/custom_text.dart';
import '../utils/constants.dart';

class CustomInfoText extends StatelessWidget {
  const CustomInfoText({
    Key? key,
    required this.screenSize,
    required this.text,
  }) : super(key: key);

  final Size screenSize;
  final String text;

  @override
  Widget build(BuildContext context) {
    return CustomPadding(
      screenSize: screenSize,
      top: paddingTopText,
      topSmall: paddingTopTextSmall,
      childWidget: CustomText(text: text), //Wrap(children: []),
    );

    // Container(
    //   width: infoTextContaineWidth,
    //   child: Wrap(children: [CustomText(text: text)]),
    // );
  }
}
