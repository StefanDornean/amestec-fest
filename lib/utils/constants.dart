import 'package:flutter/material.dart';

import '../screens/about_page.dart';
import '../screens/artists_page.dart';
import '../screens/home_page.dart';
import '../screens/location_page.dart';
import '../screens/news_page.dart';
import '../screens/tickets_page.dart';

//colors
const int pinkCode = 0xFFC32B68;
const int blueCode = 0xFF27346B;
const int darkRedCode = 0xFFC32B68;

//custom text
const String dataFestival = "18-20 August 2023";
const String newsText = "Primul Party de promovare Amestec - Iasi";
const String aboutText1 =
    "AMESTEC este o organizație tip ONG care sprijină dezvoltarea comunităților mici din Bucovina prin crearea unor oportunități de muncă pentru tineri din mediul rural, dar mai ales prin dezvoltarea turismului și promovarea culturii locale.";
const String aboutText2 =
    "Conceptul a pornit în anul 2014, la inițiativa unui grup de prieteni, colegi de facultate, urmat de o serie de petreceri cu acest nume, organizate într-un cadru restrâns. ";
const String aboutText3 =
    "Opt ani mai târziu, AMESTEC își propune să se facă auzit și văzut. Așadar, în anul 2022, un grup de tineri din zona s-a reunit pentru a crea prima ediție a festivalului AMESTEC.";
const String aboutText4 =
    "Acest proiect ne-a strâns pe toți cei împrăștiați în țară și împreună am îndrăznit să punem în practică ceea ce am dorit ani de zile. A devenit un proiect din suflet pentru suflet. ";
const String locationText1 =
    "Deluț este un petic de pământ, un sat ascuns poate prea bine între brazii Bucovinei, acel loc pe care îl descoperi doar din greșeală. Însă în momentul în care ai pășit pe pământul din deal, devi supus acestor sentimente de pace și veșnicie care e imposibil să nu te facă să te reîntorci, măcar o dată. Însă puțini știu că pe pământurile Deluțului au avut loc bătălii la sfârșitul primul război mondial în 1918 între austro-ungari și armata rusă, lasând urme care se pot vedea și în ziua de astăzi prin găurile făcute de obuze în munți și numeroase goluri generate de gloanțe imprimate în casele sau grajdurile vechi ale sătenilor. Astăzi se regăsește mormântul eroilor căzuți pe câmpul de luptă la Capela Deluț, construcție ridicată în onoarea acestora, loc unde se pot găsi numele martirilor. ";
const String locationText2 =
    "Tot aici, în fiecare an, de Sf. Ilie când e hram și sărbătoare-n sat, toți locuitorii acestuia se adună la Capelă pentru cinstirea eroilor căzuți pentru pământul care este acum Deluț și pentru țară. De aceea noi dorim să-l punem în valoare, să arătăm adevărata frumusețe a acestui loc neprihănit. Putem spune că acest sat are nevoie de oameni, dar cred că mai mult oamenii au nevoie de un loc ca acesta, iar noi vrem să-l împărtășim cu cât mai mulți. ";

//Ticket text
const String ticket1_text1 = "Early Bird General Access + Camping";
const String ticket1_text2 = "170 RON";
const String ticket2_text1 = "Early Bird General Access ";
const String ticket2_text2 = "150 RON";
const String ticket3_text1 = "Camping Pass";
const String ticket3_text2 = "50 RON";
const String iaBiletLink =
    "https://m.iabilet.ro/bilete-suceava-amestec-episodul-2-86560/?fbclid=IwAR3gG-vlFxkuqSwEmqfqE5I7YbmBOy7C4SOfiq1UndCKFrMbukzIDInA_tQ";
const String buyNow = "Buy now";

//Padding style
const double underlineTickness = 2;
const double underlineWidth = 150;

//Text style
const Color textColor = Colors.black;
const double infoTextContaineWidth = 500;

const String textFont = 'ArgentumSans';
const TextAlign textAlign = TextAlign.left;
const double textFontSize = 16;
const FontWeight textWeight = FontWeight.normal;

const String headerFont = 'LuloClean';
const TextAlign headerAlign = TextAlign.center;
const double headerFontSize = 20;
const FontWeight headerWeight = FontWeight.bold;

//Padding
const num paddingTop = 15;
const num paddingTopSmall = 25;
const num paddingBottom = 20;
const num paddingBottomSmall = 40;
const num paddingLeft = 25;
const num paddingLeftSmall = 20;

const num paddingTopHeader = 15;
const num paddingTopHeaderSmall = 25;
const num paddingBottomHeader = 20;
const num paddingBottomHeaderSmall = 40;
const num paddingLeftHeader = 8;
const num paddingLeftHeaderSmall = 30;

const num paddingTopText = 60;
const num paddingTopTextSmall = 25;
const num paddingBottomText = 20;
const num paddingBottomTextSmall = 40;
const num paddingLeftText = 8;
const num paddingLeftTextSmall = 30;

//Button style
const Color buttonTextColor = Colors.black;
const Color buttonBgColor = Colors.white;
const Color buttonBorderColor = Colors.black;
const Color buttonHoverTextColor = Colors.white;
const Color buttonHoverBgColor = Colors.black;
const Color buttonHoverBorderColor = Colors.white;
const double buttonBorderTick = 2.0;
const double buttonPadding = 8.0;
const double buttonBorderRadius = 20;

//Button icon style
const double buttonIconSize = 20;

int activeTabIndex = 0;

List shortBarItems = [
  {
    "id": 2,
    "title": "TICKETS",
    "page": TicketsPage(),
  },
  {
    "id": 4,
    "title": "ABOUT",
    "page": AboutPage(),
  },
  {
    "id": 5,
    "title": "LOCATION",
    "page": LocationPage(),
  },
];

List barItems = [
  {
    "id": 1,
    "title": "Acasa",
    "page": HomePage(),
  },
  {
    "id": 2,
    "title": "Tickets",
    "page": TicketsPage(),
  },
  {
    "id": 3,
    "title": "Artists",
    "page": ArtistsPage(),
  },
  {
    "id": 4,
    "title": "News",
    "page": NewsPage(),
  },
  {
    "id": 5,
    "title": "About",
    "page": AboutPage(),
  },
  {
    "id": 6,
    "title": "Location",
    "page": LocationPage(),
  },
];

final List<Map<String, dynamic>> artists = [
  // {
  //   'name': 'Alexandra Drobota',
  //   'imageUrl': 'assets/images/artist-AlexandraD.png',
  // },
  {
    'name': 'Chiribaw',
    'imageUrl': 'assets/images/artist-Chiribaw.png',
    'description': 'tralala',
  },
  {
    'name': 'DJ Sino',
    'imageUrl': 'assets/images/artist-DJSino.png',
  },
  {
    'name': 'Dj SPZ',
    'imageUrl': 'assets/images/artist-DjSPZ.png',
  },
  {
    'name': 'Filipash',
    'imageUrl': 'assets/images/artist-Filipash.png',
  },
  // {
  //   'name': 'Harcea Parcea',
  //   'imageUrl': 'assets/images/artist-HarceaPacea.png',
  // },
  {
    'name': 'Mad Liquid',
    'imageUrl': 'assets/images/artist-MadLiquid.png',
  },
  {
    'name': 'Rave',
    'imageUrl': 'assets/images/artist-Rave.png',
  },
  {
    'name': 'The Stone Age Nerds',
    'imageUrl': 'assets/images/artist-TheStoneAgeNerds.png',
  },
  {
    'name': 'Zentone',
    'imageUrl': 'assets/images/artist-Zentone.png',
  },
];

final List<String> instaFeed = [
  'assets/images/Misiuni-ONGArtboard-0.png',
  'assets/images/Misiuni-ONGArtboard-1.png',
  'assets/images/Misiuni-ONGArtboard-2.png',
  'assets/images/Misiuni-ONGArtboard-3.png',
  'assets/images/Misiuni-ONGArtboard-4.png',
  'assets/images/Misiuni-ONGArtboard-5.png',
  'assets/images/Misiuni-ONGArtboard-6.png',
  'assets/images/Misiuni-ONGArtboard-7.png',
];

final List news = [
  {
    "title": "Primul Party de promovare Amestec",
    "shortText":
        "Pentru că ardem de nerăbdare să vă întâlnim aruncăm un party chiar în orașul vostru!\nAcest party dă startul unei serii de petreceri prin care vrem să facem cunoștință cu voi cei care iubiți muzica și dansul, cu voi cei care petreceți până în zori, cu voi cei cu super energie sau cei care doresc să colecționeze noi amintiri frumoase!",
    "showMoreText":
        "Conceptul a pornit în anul 2014, la inițiativa unui grup de prieteni, colegi de facultate, urmat de o serie de petreceri cu acest nume organizate în cadru restrâns. Opt ani mai târziu am dat startul proiectului nostru de suflet Amestec Fest, anul asta ajungând la ediția a doua with many more to come!\nNe vedem vara asta în Deluț pe 18-20 august să ne amestecăm printre corturi, hamace, muzică, dans, pictură, bătăi cu apă, ateliere, concursuri, apusuri și răsărituri într-unul din cele mai frumoase locuri ale Bucovinei.\nDar până atunci, ne vedem vineri, 16 iunie, în Helix Pub din Iași, începând cu ora 22:00.",
    "mediaLinks": [],
    "images": ["assets/images/news5.png"],
    "showMore": false
  },
  {
    "title": "Amestec - ONG",
    "shortText":
        "Salutare, este timpul unei povestiri scurte! \nAmestec și-a propus să fie mai prezent alături de oameni, așa că uită-te că avem ONG pentru a ne îndeplini scopul.",
    "showMoreText":
        "Acestea ne sunt unele dintre misiuni și vrem să știți și voi aceste lucruri, pentru a înțelege cât mai bine ce vrem să construim împreună.\nȘi dacă vrei să ne susții în aceste cauze o poți face cu ajutorul link-ului din comentarii.",
    "mediaLinks": [],
    "images": [
      'assets/images/Misiuni-ONGArtboard-0.png',
      'assets/images/Misiuni-ONGArtboard-1.png',
      'assets/images/Misiuni-ONGArtboard-2.png',
      'assets/images/Misiuni-ONGArtboard-3.png',
      'assets/images/Misiuni-ONGArtboard-4.png',
      'assets/images/Misiuni-ONGArtboard-5.png',
      'assets/images/Misiuni-ONGArtboard-6.png',
      'assets/images/Misiuni-ONGArtboard-7.png',
    ],
    "showMore": false
  },
  {
    "title": "Numerele - Amestec",
    "shortText":
        "Vrem să mai aflați ceva despre #Amestec Ep. 2, așa că am rezumat pentru voi câteva infos care poate o să vă stârnescă curiozitatea.",
    "showMoreText":
        "Ne vedem pe Deluț! (da, așa se numește satul unde festivalul nostru va avea loc)\nSee you there!",
    "mediaLinks": [],
    "images": [
      "assets/images/Numere-AmestecArtboard-1.png",
      "assets/images/Numere-AmestecArtboard-2.png",
      "assets/images/Numere-AmestecArtboard-3.png",
      "assets/images/Numere-AmestecArtboard-4.png",
      "assets/images/Numere-AmestecArtboard-5.png",
      "assets/images/Numere-AmestecArtboard-6.png",
      "assets/images/Numere-AmestecArtboard-7.png",
      "assets/images/Numere-AmestecArtboard-8.png",
    ],
    "showMore": false
  },
  {
    "title": "Cum am început?",
    "shortText":
        "În primii ani de facultate, fiind vorba de un grup de tineri însetați de astfel de evenimente, AMESTEC a început într-un apartament cu 3 camere unde s-au adunat aproximativ 40 de persoane. Următorul an povestea s-a repetat și numărul participanților a început ușor să crească.",
    "showMoreText":
        "După câteva petreceri AMESTEC, lucrurile au început să devină serioase. Angrenați de aceeași dorință puternică ca la primul eveniment, de a avea petreceri din ce în ce mai reușite și de a avea câți mai mulți prieteni alături, am ajuns să organizăm petreceri din ce în ce mai numeroase.\nFacultatea ne-a ținut împreună șase ani, astfel că, în ultimul an am decis să ducem totul la un alt nivel și am ajuns să organizăm cel mai mare eveniment de până atunci. Cu un generator electric și niște Dj gear, am reușit să dăm cea mai mare petrecere de pe “insula de la Ciric” (din Iași).\nÎn anul 2022, AMESTEC își propune să se facă auzit și văzut. Așadar, o parte din “membrii fondatori” au decis să readucă la viață amintirea petrecerilor studențești în festivalul despre care vorbim astăzi.",
    "mediaLinks": [],
    "images": [
      "assets/images/inceput_1.png",
      "assets/images/inceput_2.png",
      "assets/images/inceput_3.png",
    ],
    "showMore": false
  },
  {
    "title": "Aftermovie - Amestec - Episodul 1",
    "shortText":
        "Munte, vară, muzică și un grup de prieteni. De aici s-a dat putere acestui festival de suflet, iar voi ați fost generatorul care l-a ținut în priză. Ați arătat ce fain v-ați simțiți prin mâinile alea ridicate în aer la DJ-ul vostru preferat de house sau techno, prin picioarele încrucișate pe drum&bass și prin zâmbetele și privirile pline de emoție date de momentele noastre autentice with a twist.",
    "showMoreText":
        "Mulțumim tuturor amestecaților care ne-au călcat iarba și au adus la viață minunea asta de festival! Iar dacă nu ai reușit sa urci până în Deluț vara trecută, sperăm ca te-am făcut să te oftici că n-ai fost și poate dăm ochii ediția următoare.\nNe vedem pe Deluț: 18-20 August 2023",
    "mediaLinks": [],
    "images": ["assets/images/news5.png"],
    "showMore": false
  }
];
