/*import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Colors.blueGrey.shade900.withOpacity(widget.opacity),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('../assets/images/logo.png'),
              // Text(
              //   'Amestec',
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 20,
              //     fontFamily: 'Montserrat',
              //     fontWeight: FontWeight.w400,
              //     letterSpacing: 3,
              //   ),
              // ),
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(width: screenSize.width / 8),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[0] = true
                              : _isHovering[0] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Discover',
                            style: TextStyle(
                              color: _isHovering[0]
                                  ? Colors.blue.shade200
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[0],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: screenSize.width / 20),
                    InkWell(
                      onHover: (value) {
                        setState(() {
                          value
                              ? _isHovering[1] = true
                              : _isHovering[1] = false;
                        });
                      },
                      onTap: () {},
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'Contact Us',
                            style: TextStyle(
                              color: _isHovering[1]
                                  ? Colors.blue[200]
                                  : Colors.black,
                            ),
                          ),
                          SizedBox(height: 5),
                          Visibility(
                            maintainAnimation: true,
                            maintainState: true,
                            maintainSize: true,
                            visible: _isHovering[1],
                            child: Container(
                              height: 2,
                              width: 20,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              // InkWell(
              //   onHover: (value) {
              //     setState(() {
              //       value ? _isHovering[2] = true : _isHovering[2] = false;
              //     });
              //   },
              //   onTap: () {},
              //   child: Text(
              //     'Sign Up',
              //     style: TextStyle(
              //       color: _isHovering[2] ? Colors.white : Colors.white70,
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   width: screenSize.width / 50,
              // ),
              // InkWell(
              //   onHover: (value) {
              //     setState(() {
              //       value ? _isHovering[3] = true : _isHovering[3] = false;
              //     });
              //   },
              //   onTap: () {},
              //   child: Text(
              //     'Login',
              //     style: TextStyle(
              //       color: _isHovering[3] ? Colors.white : Colors.white70,
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
import 'dart:html';

import 'package:flutter/material.dart';

class TopBarContents extends StatefulWidget {
  final double opacity;

  TopBarContents(this.opacity);

  @override
  _TopBarContentsState createState() => _TopBarContentsState();
}

class _TopBarContentsState extends State<TopBarContents> {
  final List _isHovering = [
    false,
    false,
    false,
    false,
    false,
    false,
    false,
    false
  ];

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
      return  PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        //child: SafeArea(
       //  child: Expanded(
        child: Container(
        //  margin: EdgeInsets.only(left: 10.0),
          padding: EdgeInsets.fromLTRB(20.0, 10.0, 0.0, 10.0),
          color: Colors.white,
          child: Row(
            
           mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              Image.asset(
                '../assets/images/logo.png',
                height: 40.0,
                
              ),
             SizedBox(width: 10.0,),

              Text(
                '18 - 20 august 2023',
                 style: TextStyle(
                  color: Colors.black,
                     fontWeight: FontWeight.bold,
                     fontSize: 12.0,
                     
                 ),
              ),
              SizedBox(width: 100.0),
               Row(
                
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                SizedBox(width: 20.0),
                  TextButton(
                    child: Text(
                      'TICKETS',
                       maxLines: 20,
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: () {
                      print('Tickets');
                    },
                  ),
                  SizedBox(width: 20.0),
                  TextButton(
                  
                    child: Text(
                      'ABOUT',
                    
                      style: TextStyle(
                        color:Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: (){
                      print('About');
                    },
                  ),
                  SizedBox(width: 20.0),
                  TextButton(
                    child: Text(
                      'LOCATION',
                      style: TextStyle(
                        color:Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16.0,
                      ),
                    ),
                    onPressed: () {
                      print('Location');
                    },
                  ),
                  SizedBox(width: 20.0),
                  Icon(
                    Icons.lock_outline,
                    size: 24.0,
                    color: Colors.black,
                  ),
                  SizedBox(width: 100.0),
                  Row( 
                      children: [
              Container(
              // padding: const EdgeInsets.only(left: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                 // color: Colors.black,
                ),
                child: Image.asset(
                  '../assets/images/facebook-4-48.png',
                  height: 25.0,
                  width: 25.0,
                ),
              ),
              SizedBox(width: 10.0),
              Container(
               // padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                  //color: Colors.black,
                ),
                child: Image.asset(
                  '../assets/images/twitter-4-48.png',
                  height: 25.0,
                  width: 25.0,
                ),
              ),
              SizedBox(width: 10.0),
              Container(
                padding: const EdgeInsets.only(right: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50.0),
                //  color: Colors.black,
                ),
                child: Image.asset(
                  '../assets/images/pngwing.com.png',
                  height: 25.0,
                  width: 25.0,
                  
                ),
              ),
                  /*  mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.circle,
                          color: Colors.blue,
                        ),
                        onPressed: (){
                          print('Facebook');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.circle,
                          color:Colors.lightBlue,
                        ),
                        onPressed: (){
                          print('Twitter');
                        },
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.circle,
                          color: Colors.pink,
                        ),
                        onPressed: () {
                          print('Instagram');
                        },
                      ),
                    ],
                  ),
              //    SizedBox(width: 10.0),*/
                ],
            
               ),
        
            ],
          ),
            ]
        )
          )
 //       )
//      )
   //   ); 
      );
}
}
