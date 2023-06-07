import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../utils/constants.dart';
import 'custom_img_card.dart';

class CustomGrid extends StatelessWidget {
  const CustomGrid({Key? key, required this.items, this.count})
      : super(key: key);

  final List items;
  final int? count;
  //static const double? count = (count!=null? count: items.length) as double?;

  @override
  Widget build(BuildContext context) {
    int artistPerRow = ResponsiveWidget.isSmallScreen(context) ? 1 : 3;

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
            itemCount: count != null ? count : items.length,
            itemBuilder: (context, index) {
              return CustomImgCard(
                  imgUrl: items[index]['imageUrl'], function: () => {});
            },
          ),
        ),
      ],
    );
  }
}
