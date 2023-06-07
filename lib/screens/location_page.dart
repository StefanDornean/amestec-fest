import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../custom/custom_info_text.dart';
import '../utils/constants.dart';
import '../widgets/bottom_bar.dart';
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      CustomInfoText(
                          screenSize: screenSize, text: locationText1),
                      SizedBox(height: 10),
                      CustomInfoText(
                          screenSize: screenSize, text: locationText2),
                    ],
                  )
                : Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomInfoText(
                                screenSize: screenSize, text: locationText1),
                          ],
                        ),
                      ),
                      SizedBox(width: 30),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomInfoText(
                                screenSize: screenSize, text: locationText2),
                          ],
                        ),
                      ),
                      SizedBox(width: 50),
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
              'assets/images/map.png',
              fit: BoxFit.cover,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          BottomBar(),
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
