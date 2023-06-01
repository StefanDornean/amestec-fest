import 'package:explore/widgets/responsive.dart';
import 'package:explore/widgets/showmore_button.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ArtistsHomePage extends StatefulWidget {
  const ArtistsHomePage({Key? key}) : super(key: key);

  @override
  _ArtistsHomePage createState() => _ArtistsHomePage();
}

class _ArtistsHomePage extends State<ArtistsHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int artistPerRow = ResponsiveWidget.isSmallScreen(context) ? 1 : 3;
    var screenSize = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: double.infinity,
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(), // Disable scrolling
            primary: false,
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: artistPerRow,
              mainAxisSpacing: 0,
              crossAxisSpacing: 0,
            ),
            itemCount: 3,
            itemBuilder: (context, index) {
              return ArtistCard(
                name: artists[index]['name'],
                imageUrl: artists[index]['imageUrl'],
                onTap: () {
                  // Handle Artist tap
                },
              );
            },
          ),
        ),
        ShowMoreButton(text: "Show More", screenSize: screenSize),
      ],
    );
  }
}

class ArtistCard extends StatelessWidget {
  final String name;
  final String imageUrl;
  final VoidCallback onTap;

  const ArtistCard({
    required this.name,
    required this.imageUrl,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                imageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
