import 'package:explore/custom/custom_info_text.dart';
import 'package:flutter/material.dart';

import '../custom/custom_header.dart';
import '../utils/constants.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/heading.dart';
import '../widgets/info_text.dart';
import '../widgets/responsive.dart';

class AboutPage extends StatefulWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  _AboutPageState createState() => _AboutPageState();
}

class _AboutPageState extends State<AboutPage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.40)
        : 1;

    return SingleChildScrollView(
      controller: _scrollController,
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          CustomHeader(screenSize: screenSize, text: 'About'),
          Container(
            child: ResponsiveWidget.isSmallScreen(context)
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomInfoText(screenSize: screenSize, text: aboutText1),
                      SizedBox(height: 10),
                      CustomInfoText(screenSize: screenSize, text: aboutText2),
                      SizedBox(height: 10),
                      CustomInfoText(screenSize: screenSize, text: aboutText3),
                      SizedBox(height: 10),
                      CustomInfoText(screenSize: screenSize, text: aboutText4),
                    ],
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomInfoText(
                                screenSize: screenSize,
                                text: aboutText1 + "\n" + aboutText2),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomInfoText(
                                screenSize: screenSize,
                                text: aboutText3 + "\n" + aboutText4),
                          ],
                        ),
                      ),
                      SizedBox(width: 50)
                    ],
                  ),
          ),
          SizedBox(height: 50),
          BottomBar(),
        ],
      ),
    );
  }
}
