import 'package:explore/widgets/bottom_bar.dart';
import 'package:explore/widgets/carousel.dart';
import 'package:explore/widgets/cover.dart';
import 'package:explore/widgets/heading.dart';
import 'package:explore/widgets/explore_drawer.dart';
import 'package:explore/widgets/featured_heading.dart';
import 'package:explore/widgets/featured_tiles.dart';
import 'package:explore/widgets/floating_quick_access_bar.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../mywidgets/count_down.dart';
import '../widgets/acomodation.dart';
import '../widgets/artists.dart';
import '../widgets/instagram_pictures.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          SizedBox(height: 15),
          CoverPage(),
          Heading(screenSize: screenSize, text: 'Artists'),
          ArtistsHomePage(),
          Heading(screenSize: screenSize, text: 'Acomodation'),
          Acomodation(
            screenSize: screenSize,
          ),
          SizedBox(height: 25),
          Heading(
              screenSize: screenSize,
              text: 'Instagram Feed',
              bgColor: Colors.black,
              textColor: Colors.white),
          InstagramPicturesPage(),
          SizedBox(height: 25),
          BottomBar(),
        ],
      ),
    );
  }
}
