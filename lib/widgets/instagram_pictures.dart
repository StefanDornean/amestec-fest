import 'dart:convert';
//import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

class InstagramPicturesPage extends StatefulWidget {
  const InstagramPicturesPage({Key? key}) : super(key: key);

  @override
  _InstagramPicturesPage createState() => _InstagramPicturesPage();
}

class _InstagramPicturesPage extends State<InstagramPicturesPage> {
  List<dynamic> _images = [];

  @override
  void initState() {
    super.initState();
    _loadImages();
  }

  String accessToken = 'your_access_token';

  Future<void> _loadImages() async {
    try {
      // final response = await http.get(Uri.parse(
      //     'https://graph.instagram.com/me/media?fields=id,caption,media_url,media_type&access_token=$accessToken'));
      // if (response.statusCode == 200) {
      //   final jsonData = json.decode(response.body);
      //   setState(() async {
      //     // List<String> _postsUrls = await InstaParser.postsUrlsFromProfile(
      //     //     'https://www.instagram.com/coderbau');
      //     _images = jsonData['data'];
      //   });
      // } else {
      //   throw Exception('Failed to load Instagram images');
      // }
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
          ),
          itemCount: _images.length,
          itemBuilder: (BuildContext context, int index) {
            final imageUrl = _images[index]['media_url'];
            return Image.network(
              imageUrl,
              fit: BoxFit.cover,
            );
          },
        )
      ],
    );
  }
}
