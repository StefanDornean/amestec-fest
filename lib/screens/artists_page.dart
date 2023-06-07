import 'package:explore/custom/custom_header.dart';
import 'package:flutter/material.dart';

import '../custom/custom_grid.dart';
import '../utils/constants.dart';
import '../widgets/bottom_bar.dart';
import '../widgets/heading.dart';

class ArtistsPage extends StatefulWidget {
  const ArtistsPage({Key? key}) : super(key: key);

  @override
  _ArtistsPageState createState() => _ArtistsPageState();
}

class _ArtistsPageState extends State<ArtistsPage> {
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
      child: Column(children: [
        CustomHeader(screenSize: screenSize, text: "ARTISTS"),
        CustomGrid(
          items: artists,
        ),
        BottomBar(),
      ]),
    );
  }
}
