import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class NewsCarousel extends StatefulWidget {
  const NewsCarousel(
    this.imgList,
  );

  final List imgList;

  @override
  _DestinationCarouselState createState() => _DestinationCarouselState();
}

class _DestinationCarouselState extends State<NewsCarousel> {
  final String imagePath = 'assets/images/';

  final CarouselController _controller = CarouselController();

  List _isSelected = [
    true,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  int _current = 0;

  List<Widget> generateImageTiles(screenSize) {
    return widget.imgList
        .map(
          (element) => Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(7.0),
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    var imageSliders = generateImageTiles(screenSize);

    return Stack(
      children: [
        CarouselSlider(
          items: imageSliders,
          options: CarouselOptions(
            enlargeCenterPage: false,
            viewportFraction: 1,
            aspectRatio: 4 / 3,
            autoPlay: false,
            scrollPhysics: NeverScrollableScrollPhysics(),
            onPageChanged: (index, reason) {
              setState(() {
                _current = index;
                for (int i = 0; i < imageSliders.length; i++) {
                  if (i == index) {
                    _isSelected[i] = true;
                  } else {
                    _isSelected[i] = false;
                  }
                }
              });
            },
          ),
          carouselController: _controller,
        ),
        if (imageSliders.length > 1)
          Positioned(
            left: 0,
            top: 0,
            bottom: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_circle_left),
              iconSize: 50,
              onPressed: () {
                if (_current > 0) {
                  _controller.previousPage();
                }
              },
            ),
          ),
        if (imageSliders.length > 1)
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: IconButton(
              icon: Icon(Icons.arrow_circle_right),
              iconSize: 50,
              onPressed: () {
                if (_current < imageSliders.length - 1) {
                  _controller.nextPage();
                }
              },
            ),
          ),
      ],
    );
  }
}
