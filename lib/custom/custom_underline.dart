import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomUnderline extends StatelessWidget {
  const CustomUnderline({
    Key? key,
    Color? this.color = textColor,
    double? this.tickness = underlineTickness,
    double? this.width = underlineWidth,
  }) : super(key: key);

  final Color? color;
  final double? tickness;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: this
          .width, // Adjust the width of the space between text and underline
      child: Divider(
        color: this.color, // Customize the underline color if needed
        thickness: this.tickness, // Adjust the thickness of the underline
      ),
    );
  }
}
