import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';

class CustomImgCard extends StatelessWidget {
  const CustomImgCard({
    Key? key,
    required this.imgUrl,
    required this.function,
    String? this.title = "",
    String? this.text = "",
  }) : super(key: key);

  final String? text;
  final String? title;
  final String imgUrl;
  final Function() function;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: InkWell(
        onTap: function,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 1,
              child: Image.asset(
                imgUrl,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
