import 'package:explore/custom/custom_button.dart';
import 'package:explore/custom/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/constants.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/heading.dart';
import '../widgets/responsive.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  _TicketsPageState createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
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

    return SingleChildScrollView(
      controller: _scrollController,
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          Heading(screenSize: screenSize, text: 'Tickets'),
          ResponsiveWidget.isSmallScreen(context)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TicketCard(
                        text1: ticket1_text1,
                        text2: ticket1_text2,
                        color: pinkCode),
                    TicketCard(
                        text1: ticket2_text1,
                        text2: ticket2_text2,
                        color: blueCode),
                    //TicketCard(text1: ticket3_text1, text2: ticket3_text2),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TicketCard(
                        text1: ticket1_text1,
                        text2: ticket1_text2,
                        color: pinkCode),
                    SizedBox(width: 30),
                    TicketCard(
                        text1: ticket2_text1,
                        text2: ticket2_text2,
                        color: blueCode),
                    //TicketCard(text1: ticket3_text1, text2: ticket3_text2),
                  ],
                ),
          SizedBox(height: 50),
          BottomBar(),
        ],
      ),
    );
  }
}

class TicketCard extends StatelessWidget {
  //const TicketCard();
  final String text1;
  final String text2;
  final int color;

  const TicketCard({
    required this.text1,
    required this.text2,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Column(children: [
      Container(
        height: screenSize.height / 2,
        width: screenSize.width * 0.3,
        padding: EdgeInsets.fromLTRB(30, 0, 30, 0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Color(color),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20),
            CustomText(
              text: text1,
              font: headerFont,
              fontSize: headerFontSize,
              align: TextAlign.center,
              color: Colors.white,
            ),
            SizedBox(height: 20),
            CustomText(text: text2, font: headerFont, color: Colors.white),
          ],
        ),
      ),
      SizedBox(height: 15),
      CustomButton(
          text: buyNow,
          function: () async {
            await launchUrl(
              Uri.parse(iaBiletLink),
              webOnlyWindowName: '_blank',
            );
          })
    ]);
  }
}
