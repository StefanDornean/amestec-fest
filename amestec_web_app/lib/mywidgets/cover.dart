import 'package:flutter/material.dart';
import 'package:explore/widgets/bottom_bar.dart';
import 'package:explore/widgets/carousel.dart';
import 'package:explore/widgets/destination_heading.dart';
import 'package:explore/widgets/explore_drawer.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Cover extends StatelessWidget {
  const Cover({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        child: SizedBox(
          height: screenSize.height * 0.45,
          width: screenSize.width,
          child: Image.asset(
            'assets/images/cover.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
      Column(
        children: [
          //FloatingQuickAccessBar(screenSize: screenSize),
          Container(
            child: Column(
              children: [
                // FeaturedHeading(
                //   screenSize: screenSize,
                // ),
                // FeaturedTiles(screenSize: screenSize)
              ],
            ),
          ),
        ],
      )
    ]);
  }
}
