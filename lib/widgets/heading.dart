import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Heading extends StatelessWidget {
  const Heading({
    Key? key,
    required this.screenSize,
    required this.text,
  }) : super(key: key);

  final Size screenSize;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ResponsiveWidget.isSmallScreen(context)
        ? Container(
            padding: EdgeInsets.only(
              top: screenSize.height / 20,
              bottom: screenSize.height / 20,
            ),
            width: screenSize.width,
            child: Text(
              text,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        : Container(
            padding: EdgeInsets.only(
              top: screenSize.height / 10,
              bottom: screenSize.height / 15,
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
                    ),
                  ),
                  SizedBox(
                    width:
                        70, // Adjust the width of the space between text and underline
                    child: Divider(
                      color: Colors
                          .black, // Customize the underline color if needed
                      thickness: 2, // Adjust the thickness of the underline
                    ),
                  ),
                ]));
  }
}
