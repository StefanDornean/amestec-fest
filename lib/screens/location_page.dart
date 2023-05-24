import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/heading.dart';
import '../widgets/info_text.dart';
import '../widgets/responsive.dart';
//import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationPage extends StatefulWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  _LocationPageState createState() => _LocationPageState();
}

class _LocationPageState extends State<LocationPage> {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  final String text1 =
      "Deluț este un petic de pământ, un sat ascuns poate prea bine între brazii Bucovinei, acel loc pe care îl descoperi doar din greșeală. Însă în momentul în care ai pășit pe pământul din deal, devi supus acestor sentimente de pace și veșnicie care e imposibil să nu te facă să te reîntorci, măcar o dată. Însă puțini știu că pe pământurile Deluțului au avut loc bătălii la sfârșitul primul război mondial în 1918 între austro-ungari și armata rusă, lasând urme care se pot vedea și în ziua de astăzi prin găurile făcute de obuze în munți și numeroase goluri generate de gloanțe imprimate în casele sau grajdurile vechi ale sătenilor. Astăzi se regăsește mormântul eroilor căzuți pe câmpul de luptă la Capela Deluț, construcție ridicată în onoarea acestora, loc unde se pot găsi numele martirilor. ";
  final String text2 =
      "Tot aici, în fiecare an, de Sf. Ilie când e hram și sărbătoare-n sat, toți locuitorii acestuia se adună la Capelă pentru cinstirea eroilor căzuți pentru pământul care este acum Deluț și pentru țară. De aceea noi dorim să-l punem în valoare, să arătăm adevărata frumusețe a acestui loc neprihănit. Putem spune că acest sat are nevoie de oameni, dar cred că mai mult oamenii au nevoie de un loc ca acesta, iar noi vrem să-l împărtășim cu cât mai mulți. ";

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    // late GoogleMapController mapController;

    // final LatLng _initialPosition =
    //     LatLng(37.7749, -122.4194); // Initial map position

    return SingleChildScrollView(
      controller: _scrollController,
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          Heading(screenSize: screenSize, text: 'Location'),
          Container(
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
                      Column(
                        children: [
                          InfoText(text: text1),
                        ],
                      ),
                      SizedBox(width: 30),
                      Column(
                        children: [
                          InfoText(text: text2),
                        ],
                      ),
                    ],
                  ),
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () async {
              await launchUrl(
                Uri.parse('https://goo.gl/maps/ZTbSUYkpNYXm95wb8'),
                webOnlyWindowName: '_blank',
              );
            },
            child: Image.asset(
              'assets/images/map.jpg',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          // GoogleMap(
          //   initialCameraPosition: CameraPosition(
          //     target: _initialPosition,
          //     zoom: 12,
          //   ),
          //   onMapCreated: (GoogleMapController controller) {
          //     mapController = controller;
          //   },
          // ),
        ],
      ),
    );
  }
}
