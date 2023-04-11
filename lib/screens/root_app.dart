import 'package:explore/screens/about_page.dart';
import 'package:explore/screens/tickets_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/responsive.dart';
import 'home_page.dart';


class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  _RootAppState createState() => _RootAppState();
  
}

class _RootAppState extends State<RootApp> with TickerProviderStateMixin {
  final ScrollController _scrollController = ScrollController();
  double _scrollPosition = 0;
  double _opacity = 0;

  get onClose => null;

  _scrollListener() {
    setState(() {
      _scrollPosition = _scrollController.position.pixels;
    });
  }

  int activeTabIndex = 0;
  List barItems = [
    {
      "title": "Acasa",
      "page": HomePage(),
    },
    {
      "title": "Tickets",
      "page": TicketsPage(),
    },
    {
      "title": "Artists",
      "page": AboutPage(),
    },
    {
      "title": "News",
      "page": Container(
        alignment: Alignment.center,
        child: Text("Explore"),
      ),
    },
    {
      "title": "About",
      "page": Container(
        alignment: Alignment.center,
        child: Text("About"),
      ),
    },
    {
      "title": "Location",
      "page": Container(
        alignment: Alignment.center,
        child: Text("Location"),
      ),
    },
    {
      "title": "Register",
      "page": Container(
        alignment: Alignment.center,
        child: Text("Register"),
      ),
    },
  ];

//====== set animation=====
  late final AnimationController _controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  @override
  void initState() {
    _scrollController.addListener(_scrollListener);
    super.initState();
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.stop();
    _controller.dispose();
    super.dispose();
  }

  animatedPage(page) {
    return FadeTransition(child: page, opacity: _animation);
  }

  onPageChanged(int index) {
    if (index == activeTabIndex) return;
    _controller.reset();
    setState(() {
      activeTabIndex = index;
    });
    _controller.forward();
  }

//====== end set animation=====

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    _opacity = _scrollPosition < screenSize.height * 0.40
        ? _scrollPosition / (screenSize.height * 0.80)
        : 1;

    return Scaffold(
    
        
      appBar: ResponsiveWidget.isSmallScreen(context)
            ? AppBar(
              elevation:0,
               iconTheme: IconThemeData(color: Colors.black),
              title: Row(
                
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                
                children: [
                  Row(
                    children: [
                      Image.asset('assets/images/logo.png',
                      height: 40.0,
                      ),
                      SizedBox(width: 8),
                      Text(
                        '18 - 20 August 2023',
                        style: TextStyle(fontSize: 12,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                        ),
                      ),
                    ],
                  ),
                  IconButton(
                    icon: Icon(Icons.person,
                    color: Colors.black,),
                    onPressed: () {

                    },
                  ),
                  
                ],
                
              ),
             
             backgroundColor: Colors.white,
              
            ):PreferredSize(
              preferredSize: Size(screenSize.width, 1000),
              child: getTopBar(screenSize),
              
            ),
               
        endDrawer: Drawer(
          
          backgroundColor: Colors.black,
          width: double.infinity,
          child: Column(
            children: [
              Container(
                alignment: Alignment.centerRight,
                child: IconButton(
                  color: Colors.white,
                  icon: Icon(Icons.close),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                      onPageChanged(0);
                    },
                    child: Text(
                      'HOME',
                      style: TextStyle(
                          color:
                              activeTabIndex == 0 ? Colors.pink : Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      _controller.reverse();
                      Navigator.pop(context);
                      onPageChanged(1);
                    },
                    child: Text(
                      'TICKETS',
                      style: TextStyle(
                          color:
                              activeTabIndex == 1 ? Colors.pink : Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      _controller.reverse();
                      Navigator.pop(context);
                      onPageChanged(2);
                    },
                    child: Text(
                      'ARTISTS',
                      style: TextStyle(
                          color:
                              activeTabIndex == 2 ? Colors.pink : Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      _controller.reverse();
                      Navigator.pop(context);
                      onPageChanged(3);
                    },
                    child: Text(
                      'NEWS',
                      style: TextStyle(
                          color:
                              activeTabIndex == 3 ? Colors.pink : Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      _controller.reverse();
                      Navigator.pop(context);
                      onPageChanged(4);
                    },
                    child: Text(
                      'ABOUT',
                      style: TextStyle(
                          color:
                              activeTabIndex == 4 ? Colors.pink : Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      _controller.reverse();
                      Navigator.pop(context);
                      onPageChanged(5);
                    },
                    child: Text(
                      'LOCATION',
                      style: TextStyle(
                          color:
                              activeTabIndex == 5 ? Colors.pink : Colors.white,
                          fontSize: 22),
                    ),
                  ),
                  SizedBox(height: 20),
                  InkWell(
                    onTap: () {
                      _controller.reverse();
                      Navigator.pop(context);
                      onPageChanged(6);
                    },
                    child: Text(
                      'REGISTER',
                      style: TextStyle(
                          color:
                              activeTabIndex == 6 ? Colors.pink : Colors.white,
                          fontSize: 22),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
       
        body: getPage());
  }

  Widget getPage() {
    return IndexedStack(
        index: activeTabIndex,
        children: List.generate(
            barItems.length, (index) => animatedPage(barItems[index]["page"])));
  }

  Widget getTopBar(screenSize) {
      
    final List _isHovering = [false, false, false, false];
    List _isActive = [true, false, false, false, false];
  
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () {
                  onPageChanged(0);
                },
                child: Image.asset(
                  '../assets/images/logo.png',
                  height: 50.0,
                ),
              ),
              SizedBox(width: 10),
              Text(
                '18 - 20 august 2023',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 12.0,
                ),
              ),
              SizedBox(width: screenSize.width * 0.10),
              TextButton(
                child: Text(
                  'TICKETS',
                  maxLines: 20,
                  style: TextStyle(
                  color: Colors.black,
                    fontWeight: FontWeight.bold,
                   /* color: Colors.black,
                    fontWeight: FontWeight.bold,*/
                    fontSize: 16.0,
                  ),
                ),
              
            
                onPressed: () {
                  onPageChanged(1);
                 
                },
              ),
              SizedBox(width: 5),
              TextButton(
                child: Text(
                  'ABOUT',
                  style: TextStyle(
                    color:  Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                 
                
                onPressed: () {
                  onPageChanged(2);
                
                },
              ),
              SizedBox(width: 5),
              TextButton(
                child: Text(
                  'LOCATION',
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 16.0,
                  ),
                ),
                
                onPressed: () {
                  onPageChanged(3);
                  
                },
              ),
              SizedBox(width: 10),
              Icon(
                Icons.perm_identity_rounded,
                size: 24.0,
                color: Colors.black,
              ),
              SizedBox(width: screenSize.width * 0.10),
              IconButton(
                onPressed: () async {
                  await launchUrl(
                    Uri.parse('https://www.facebook.com/amestec.fest'),
                    webOnlyWindowName: '_blank',
                  );
                },
                icon: FaIcon(
                  FontAwesomeIcons.facebook,
                  size: 24.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 5),
              IconButton(
                onPressed: () async {
                  await launchUrl(
                    Uri.parse('https://www.instagram.com/amestec.fest/'),
                    webOnlyWindowName: '_blank',
                  );
                },
                icon: FaIcon(
                  FontAwesomeIcons.twitter,
                  size: 24.0,
                  color: Colors.black,
                ),
              ),
              SizedBox(width: 5),
              IconButton(
                onPressed: () async {
                  await launchUrl(
                    Uri.parse('https://www.instagram.com/amestec.fest/'),
                    webOnlyWindowName: '_blank',
                  );
                },
                icon: FaIcon(
                  FontAwesomeIcons.instagram,
                  size: 24.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

 


