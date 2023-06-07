import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomText extends StatelessWidget {
  const CustomText({
    Key? key,
    required this.text,
    Color? this.color = textColor,
    double? this.fontSize = textFontSize,
    String? this.font = textFont,
    TextAlign? this.align = textAlign,
    FontWeight? this.weight = textWeight,
  }) : super(key: key);

  final String text;
  final Color? color;
  final double? fontSize;
  final String? font;
  final TextAlign? align;
  final FontWeight? weight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: align,
      style: TextStyle(
          color: this.color,
          fontSize: this.fontSize,
          fontFamily: this.font,
          fontWeight: this.weight),
    );
  }
}
