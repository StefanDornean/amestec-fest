import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/constants.dart';
import 'artists.dart';

class InstagramPicturesPage extends StatefulWidget {
  const InstagramPicturesPage({Key? key}) : super(key: key);

  @override
  _InstagramPicturesPage createState() => _InstagramPicturesPage();
}

class _InstagramPicturesPage extends State<InstagramPicturesPage> {
//   List<Widget> _widgetsList = [];
// List<String> _imagesList = [];
// List<String> _postsUrls = await InstaParser.postsUrlsFromProfile(
//     'https://www.instagram.com/coderbau');

  @override
  void initState() {
    super.initState();
    //_loadImages();
  }

  // String accessToken = 'your_access_token';

  // Future<void> _loadImages() async {
  //   try {
  //     // final response = await http.get(Uri.parse(
  //     //     'https://graph.instagram.com/me/media?fields=id,caption,media_url,media_type&access_token=$accessToken'));
  //     // if (response.statusCode == 200) {
  //     //   final jsonData = json.decode(response.body);
  //     //   setState(() async {
  //     //     // List<String> _postsUrls = await InstaParser.postsUrlsFromProfile(
  //     //     //     'https://www.instagram.com/coderbau');
  //     //     _images = jsonData['data'];
  //     //   });
  //     // } else {
  //     //   throw Exception('Failed to load Instagram images');
  //     // }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  List<String> _images = [
    "https://www.instagram.com/p/CsTdttkKTzL/",
    "https://www.instagram.com/p/CsDf2SeoxA7/",
    "https://www.instagram.com/p/CrxnWZ3P26P/",
    "https://www.instagram.com/p/CrxnPLCPTdX/",
    "https://www.instagram.com/p/CrxnIBcJ2nN/",
    "https://www.instagram.com/p/CracFaMo1Hr/",
    "https://www.instagram.com/p/Crab-KgI5pi/",
    "https://www.instagram.com/p/Crab25Pqt0L/",
    "https://www.instagram.com/p/CrLElVbqo0S/",
    "https://www.instagram.com/p/CrA36U3oJ-6/",
    "https://www.instagram.com/p/Cq2EQAZoCxP/",
    "https://www.instagram.com/p/CquwdHHOckV/"
  ];

  @override
  Widget build(BuildContext context) {
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
        itemCount: instaFeed.length,
        itemBuilder: (context, index) {
          return ArtistCard(
            name: '',
            imageUrl: instaFeed[index],
            onTap: () async {
              await launchUrl(
                Uri.parse('https://www.instagram.com/amestec.fest/'),
                webOnlyWindowName: '_blank',
              );
            },
          );
        },
      ),
    );

    // LayoutBuilder(
    //   builder: (BuildContext context, BoxConstraints constraints) {
    //     return SingleChildScrollView(
    //       child: SizedBox(
    //         width: constraints.maxWidth,
    //         child: Html(
    //           data: htmlData,
    //           onCssParseError: (css, messages) {
    //             print("css that errored: $css");
    //             print("error messages:");
    //             messages.forEach((element) {
    //               print(element);
    //             });
    //           },
    //         ),
    //       ),
    //     );
    //   },
    // );

    // child: HtmlElementView(
    //   viewType: '''
    //     <html>
    //       <body>
    //         <script src="https://www.instagram.com/embed.js" crossorigin="anonymous"></script>
    //         <div style="max-width: 320px">
    //           <blockquote class="instagram-media" data-instgrm-permalink="https://www.instagram.com/p/CR1izimP_Rk/" data-instgrm-version="13"></blockquote>
    //           <script async src="//www.instagram.com/embed.js"></script>
    //         </div>
    //       </body>
    //     </html>
    //   ''',
    // style: {
    //   'body': Style(
    //     margin: EdgeInsets.zero,
    //     padding: EdgeInsets.zero,
    //   ),
    // },
    //),

    // return SizedBox(
    //   width: double.infinity,
    //   child: GridView.builder(
    //     physics: NeverScrollableScrollPhysics(), // Disable scrolling
    //     primary: false,
    //     shrinkWrap: true,
    //     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
    //       crossAxisCount: 6,
    //       mainAxisSpacing: 0,
    //       crossAxisSpacing: 0,
    //     ),
    //     itemCount: _images.length,
    //     itemBuilder: (BuildContext context, int index) {
    //       final imageUrl = _images[index];
    //       return CachedNetworkImage(
    //         imageUrl: imageUrl,
    //         fit: BoxFit.cover,
    //         placeholder: (context, url) =>
    //             CircularProgressIndicator(), // Show a placeholder while loading
    //         errorWidget: (context, url, error) => Icon(
    //             Icons.error), // Show an error icon if the image fails to load
    //       );
    //     },
    //   ),
    // );
  }
}
