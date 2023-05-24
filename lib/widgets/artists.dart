import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ArtistsPage extends StatefulWidget {
  const ArtistsPage({Key? key}) : super(key: key);

  @override
  _ArtistsPage createState() => _ArtistsPage();
}

class _ArtistsPage extends State<ArtistsPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    int artistPerRow = ResponsiveWidget.isSmallScreen(context) ? 4 : 5;
    return SizedBox(
      width: double.infinity,
      child: GridView.builder(
        physics: NeverScrollableScrollPhysics(), // Disable scrolling
        primary: false,
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          mainAxisSpacing: 0,
          crossAxisSpacing: 0,
        ),
        itemCount: artists.length,
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
              aspectRatio: 3 / 3,
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
