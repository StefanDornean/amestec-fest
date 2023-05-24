import 'package:explore/widgets/info_text.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

class Acomodation extends StatelessWidget {
  const Acomodation({Key? key, required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    final String text1 =
        'Varianta de cazare pe care o recomandăm pentru o experiență completă AMESTEC este cea de camping, iar în cazul în care dorești sa stai la pensiune, după recomandarea noastră, o să punem la cale o listă cu cele mai bune cazări din zonă. More info soon!';
    final String text2 =
        'Zona de camping AMESTEC include parcare, acces la dușuri, toalete și chiuvete, este păzită și iluminată nocturn.';
    return Container(
      child: ResponsiveWidget.isSmallScreen(context)
          ? Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InfoText(text: text1),
                SizedBox(height: 10),
                InfoText(text: text2),
              ],
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InfoText(text: text1),
                SizedBox(width: 30),
                InfoText(text: text2),
              ],
            ),
    );
  }
}
