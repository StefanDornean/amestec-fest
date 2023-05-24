import 'package:flutter/material.dart';

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

    final String text1 =
        "AMESTEC este o organizație tip ONG care sprijină dezvoltarea comunităților mici din Bucovina prin crearea unor oportunități de muncă pentru tineri din mediul rural, dar mai ales prin dezvoltarea turismului și promovarea culturii locale.";
    final String text2 =
        "Conceptul a pornit în anul 2014, la inițiativa unui grup de prieteni, colegi de facultate, urmat de o serie de petreceri cu acest nume, organizate într-un cadru restrâns. ";
    final String text3 =
        "Opt ani mai târziu, AMESTEC își propune să se facă auzit și văzut. Așadar, în anul 2022, un grup de tineri din zona s-a reunit pentru a crea prima ediție a festivalului AMESTEC.";
    final String text4 =
        "Acest proiect ne-a strâns pe toți cei împrăștiați în țară și împreună am îndrăznit să punem în practică ceea ce am dorit ani de zile. A devenit un proiect din suflet pentru suflet. ";

    return SingleChildScrollView(
      controller: _scrollController,
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          Heading(screenSize: screenSize, text: 'About'),
          Container(
            child: ResponsiveWidget.isSmallScreen(context)
                ? Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      InfoText(text: text1),
                      SizedBox(height: 10),
                      InfoText(text: text2),
                      SizedBox(height: 10),
                      InfoText(text: text3),
                      SizedBox(height: 10),
                      InfoText(text: text4),
                    ],
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          InfoText(text: text1),
                          SizedBox(height: 10),
                          InfoText(text: text2),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          InfoText(text: text3),
                          SizedBox(height: 10),
                          InfoText(text: text4),
                        ],
                      ),
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
