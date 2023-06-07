import 'package:explore/custom/custom_button.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:explore/widgets/showmore_button.dart';
import 'package:flutter/material.dart';

import '../custom/custom_img_card.dart';
import '../custom/custom_padding.dart';
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
              return CustomImgCard(
                  imgUrl: artists[index]['imageUrl'], function: () => {});
            },
          ),
        ),
        CustomPadding(
          screenSize: screenSize,
          left: paddingLeftHeader,
          leftSmall: paddingLeftHeaderSmall,
          top: 30,
          bottom: 30,
          childWidget: CustomButton(
              text: "Show More", function: () => {}), //onPageChanged(index:2)
        ),
      ],
    );
  }
}
