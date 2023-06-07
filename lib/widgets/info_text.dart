import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../custom/custom_text.dart';

class InfoText extends StatelessWidget {
  const InfoText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Wrap(children: [CustomText(text: text)]),
    );
  }
}
