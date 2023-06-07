import 'package:flutter/material.dart';

import '../custom/custom_news_card.dart';
import '../utils/constants.dart';
import '../widgets/heading.dart';
import '../widgets/responsive.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({Key? key}) : super(key: key);

  @override
  _NewsPageState createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
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
    Size screenSize = MediaQuery.of(context).size;

    return SingleChildScrollView(
      controller: _scrollController,
      physics: ClampingScrollPhysics(),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            GridView.builder(
              physics: NeverScrollableScrollPhysics(), // Disable scrolling
              primary: false,
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: ResponsiveWidget.isSmallScreen(context) ? 1 : 3,
              ),
              itemCount: news.length,
              itemBuilder: (context, index) {
                return CustomNewsCard(
                  screenSize: screenSize,
                  news: news[index],
                );
              },
            ),
          ]),
    );
  }
}
