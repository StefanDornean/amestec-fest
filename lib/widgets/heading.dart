import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.screenSize,
    required this.text,
    Color? this.bgColor,
    Color? this.textColor,
  }) : super(key: key);

  final Size screenSize;
  final String text;
  final Color? bgColor;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            color: this.bgColor != null ? this.bgColor : Colors.transparent,
            padding: EdgeInsets.only(
              top: screenSize.height / 25,
              bottom: screenSize.height / 40,
              left: 20,
            ),
            width: screenSize.width,
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20,
                      fontFamily: 'LuloClean',
                      fontWeight: FontWeight.bold,
                      color: this.textColor != null
                          ? this.textColor
                          : Colors.black),
                ),
                SizedBox(
                  width:
                      150, // Adjust the width of the space between text and underline
                  child: Divider(
                    color: this.textColor != null
                        ? this.textColor
                        : Colors
                            .black, // Customize the underline color if needed
                    thickness: 2, // Adjust the thickness of the underline
                  ),
                ),
              ],
            ),
          )
        : Container(
            color: this.bgColor != null ? this.bgColor : Colors.transparent,
            padding: EdgeInsets.only(
              top: screenSize.height / 15,
              bottom: screenSize.height / 20,
              left: screenSize.width * 0.25,
            ),
            width: screenSize.width,
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text(
                    text,
                    textAlign: TextAlign.left, // Align the text to the left
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'LuloClean',
                      fontWeight: FontWeight.bold,
                      color: this.textColor != null
                          ? this.textColor
                          : Colors.black,
                    ),
                  ),
                  SizedBox(
                    width:
                        70, // Adjust the width of the space between text and underline
                    child: Divider(
                      color: this.textColor != null
                          ? this.textColor
                          : Colors
                              .black, // Customize the underline color if needed
                      thickness: 2, // Adjust the thickness of the underline
                    ),
                  ),
                ]));
  }
}
