import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import '../widgets/carousel.dart';
import 'custom_button.dart';
import 'custom_header.dart';
import 'custom_padding.dart';
import 'custom_text.dart';

class CustomNewsCard extends StatefulWidget {
  final dynamic news;
  final Size screenSize;

  const CustomNewsCard({
    required this.news,
    required this.screenSize,
  });

  @override
  _CustomNewsCardState createState() => _CustomNewsCardState();
}

class _CustomNewsCardState extends State<CustomNewsCard> {
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(20, 30, 30, 30),
      child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: widget.news["title"],
                  fontSize: headerFontSize,
                  align: headerAlign,
                  font: headerFont,
                ),
                Container(
                  height: null,
                  width: widget.screenSize.width,
                  child: NewsCarousel(widget.news["images"]),
                ),
                SizedBox(height: 25),
                CustomText(text: widget.news["shortText"]),
                if (showMore) CustomText(text: widget.news["showMoreText"]),
                CustomPadding(
                  screenSize: widget.screenSize,
                  left: paddingLeftHeader,
                  leftSmall: paddingLeftHeaderSmall,
                  top: 30,
                  bottom: 30,
                  childWidget: CustomButton(
                    text: showMore ? "Show Less" : "Show More",
                    function: () => setState(() => showMore = !showMore),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
