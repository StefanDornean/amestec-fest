import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class InfoText extends StatelessWidget {
  const InfoText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Wrap(children: [
        Text(
          text,
          textAlign: TextAlign.justify,
          style: TextStyle(
              color: Colors.black, fontSize: 16, fontFamily: 'ArgentumSans'),
        ),
      ]),
    );
  }
}
