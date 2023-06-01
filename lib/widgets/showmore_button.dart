import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class ShowMoreButton extends StatelessWidget {
  const ShowMoreButton({
    Key? key,
    required this.text,
    required this.screenSize,
    Color? this.bgColor,
    Color? this.textColor,
  }) : super(key: key);

  final Size screenSize;
  final String text;
  final Color? bgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: screenSize.height / 25,
        bottom: screenSize.height / 40,
        left: ResponsiveWidget.isSmallScreen(context)
            ? 20
            : screenSize.width * 0.25,
      ),
      child: InkWell(
        child: SizedBox(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'LuloClean',
                  fontWeight: FontWeight.bold,
                  color:
                      this.textColor != null ? this.textColor : Colors.black),
            ),
          ),
        ),
      ),
    );
  }
}
