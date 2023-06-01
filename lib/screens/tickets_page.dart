import 'package:flutter/material.dart';

import '../widgets/heading.dart';
import '../widgets/responsive.dart';

class TicketsPage extends StatefulWidget {
  const TicketsPage({Key? key}) : super(key: key);

  @override
  _TicketsPageState createState() => _TicketsPageState();
}

class _TicketsPageState extends State<TicketsPage> {
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

    return SingleChildScrollView(
      controller: _scrollController,
      physics: ClampingScrollPhysics(),
      child: Column(
        children: [
          Heading(screenSize: screenSize, text: 'Tickets'),
          ResponsiveWidget.isSmallScreen(context)
              ? Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: screenSize.height / 4,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.pink,
                            ),
                            child: Column(),
                          ),
                          InkWell(
                            onTap: () {
                              // Handle button click for the first figure
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Early Bird General Access Pass',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '\150 RON',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '72h',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          InkWell(
                            onTap: () {},

                            /*  InkWell(
                      onTap: () {
                        // Add your desired onTap functionality here
                      },*/
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Buy now',
                                  style: TextStyle(
                                    fontFamily: 'LuloClean',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: screenSize.height / 4,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.pink,
                            ),
                            child: Column(),
                          ),
                          InkWell(
                            onTap: () {
                              // Handle button click for the second figure
                            },
                            child: Column(
                              children: [
                                Text(
                                  'General Access Pass',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '\300 RON',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '72h',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          InkWell(
                            onTap: () {},

                            /*  InkWell(
                      onTap: () {
                        // Add your desired onTap functionality here
                      },*/
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Buy now',
                                  style: TextStyle(
                                    fontFamily: 'LuloClean',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: screenSize.height / 4,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.pink,
                            ),
                            child: Column(),
                          ),
                          InkWell(
                            onTap: () {
                              // Handle button click for the third figure
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Camping Pass',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '\50 RON',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '72h',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          InkWell(
                            onTap: () {},

                            /*  InkWell(
                      onTap: () {
                        // Add your desired onTap functionality here
                      },*/
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Buy now',
                                  style: TextStyle(
                                    fontFamily: 'LuloClean',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: screenSize.height / 4,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.pink,
                            ),
                            child: Column(),
                          ),
                          InkWell(
                            onTap: () {
                              // Handle button click for the first figure
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Early Bird General Access Pass',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '\150 RON',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '72h',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          InkWell(
                            onTap: () {},

                            /*  InkWell(
                      onTap: () {
                        // Add your desired onTap functionality here
                      },*/
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Buy now',
                                  style: TextStyle(
                                    fontFamily: 'LuloClean',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: screenSize.height / 4,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.pink,
                            ),
                            child: Column(),
                          ),
                          InkWell(
                            onTap: () {
                              // Handle button click for the second figure
                            },
                            child: Column(
                              children: [
                                Text(
                                  'General Access Pass',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '\300 RON',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '72h',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          InkWell(
                            onTap: () {},

                            /*  InkWell(
                      onTap: () {
                        // Add your desired onTap functionality here
                      },*/
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Buy now',
                                  style: TextStyle(
                                    fontFamily: 'LuloClean',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        children: [
                          Container(
                            height: screenSize.height / 4,
                            width: screenSize.width * 0.3,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.pink,
                            ),
                            child: Column(),
                          ),
                          InkWell(
                            onTap: () {
                              // Handle button click for the third figure
                            },
                            child: Column(
                              children: [
                                Text(
                                  'Camping Pass',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '\50 RON',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          GestureDetector(
                            onTap: null, // Disable tap gesture
                            child: Text(
                              '72h',
                              style: TextStyle(
                                fontSize: 12,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          SizedBox(height: 15),
                          InkWell(
                            onTap: () {},

                            /*  InkWell(
                      onTap: () {
                        // Add your desired onTap functionality here
                      },*/
                            child: Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.black,
                                  width: 2.0,
                                ),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'Buy now',
                                  style: TextStyle(
                                    fontFamily: 'LuloClean',
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
        ],
      ),
    );
  }
}
