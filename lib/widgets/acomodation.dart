import 'package:flutter/material.dart';

class Acomodation extends StatelessWidget {
  const Acomodation({Key? key, required this.screenSize});
  final Size screenSize;
  @override
  Widget build(BuildContext context) {
    final String text1 =
        'Varianta de cazare pe care o recomandăm pentru o experienta completa AMESTEC este cea de camping, iar în cazul în care dorești sa stai la pensiune, după recomandarea noastră, o să punem la cale o lista cu cele mai bune cazări din zonă. More infos soon!';
    final String text2 =
        'Zona de camping AMESTEC include parcare, acces la dușuri, toalete și chiuvete, este păzită și iluminată nocturn.';
    return Container(
        child: Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 300,
          child: Wrap(children: [
            Text(
              text1,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.blueGrey.shade300,
                  fontSize: 16,
                  fontFamily: 'AvenirLight'),
            ),
          ]),
        ),
        SizedBox(
          width: 30,
        ),
        Container(
          width: 200,
          child: Wrap(children: [
            Text(
              text2,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  color: Colors.blueGrey.shade300,
                  fontSize: 16,
                  fontFamily: 'AvenirLight'),
            ),
          ]),
        ),
      ],
    ));
  }
}
