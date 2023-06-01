import 'package:date_count_down/date_count_down.dart';
import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';
import 'package:explore/widgets/responsive.dart';

class CoverPage extends StatefulWidget {
  const CoverPage({Key? key}) : super(key: key);

  @override
  _CoverPage createState() => _CoverPage();
}

class _CoverPage extends State<CoverPage> {
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return ResponsiveWidget.isSmallScreen(context)
        ? Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Stack(
                children: <Widget>[
                  Container(
                    child: SizedBox(
                      height: screenSize.height * 0.4,
                      width: screenSize.width * 0.90,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          'assets/images/cover1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: screenSize.height * 0.27,
                      left: screenSize.width / 2.0,
                    ),
                    child: Container(
                      height: 135,
                      width: 135,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white,
                          width: 5,
                        ),
                        borderRadius: BorderRadius.circular(180),
                        color: Color.fromARGB(255, 204, 47, 99),
                      ),
                      child: Center(
                        child: GestureDetector(
                          // onTap: () {
                          //   // Handle onTap event
                          //   print('Text tapped!');
                          // },
                          child: CountDownText(
                            due: DateTime.parse("2023-08-17 00:00:00"),
                            finishedText: "Done",
                            showLabel: true,
                            longDateName: true,
                            daysTextLong: " DAYS\n",
                            hoursTextLong: "h ",
                            minutesTextLong: "m ",
                            secondsTextLong: "s",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontFamily: 'LuloClean',
                            ),
                          ),
                          // child: Text(
                          //   'Tickets',
                          //   style: TextStyle(
                          //     fontFamily: 'LuloClean',
                          //     color: Colors.white,
                          //   ),
                          // ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          )
        : Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: SizedBox(
                  height: screenSize.height * 0.5,
                  width: screenSize.width / 1.8,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset(
                      'assets/images/cover1.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 25),
              Container(
                height: screenSize.height * 0.5,
                width: screenSize.width / 6,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFFC32B68),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.asset(
                        'assets/images/stea.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Countdown',
                      style: TextStyle(
                        fontFamily: 'LuloClean',
                        color: Colors.white,
                      ),
                    ),
                    CountDownText(
                      due: DateTime.parse("2023-08-17 00:00:00"),
                      finishedText: "Done",
                      showLabel: true,
                      longDateName: true,
                      daysTextLong: " DAYS\n",
                      hoursTextLong: "h ",
                      minutesTextLong: "m ",
                      secondsTextLong: "s",
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'LuloClean',
                      ),
                    ),

                    SizedBox(height: 10),
                    // InkWell(
                    //   onTap: () {
                    //     // Add your desired onTap functionality here
                    //   },
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       border: Border.all(
                    //         color: Colors.white,
                    //         width: 2.0,
                    //       ),
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //     child: Padding(
                    //       padding: EdgeInsets.all(8.0),
                    //       child: Text(
                    //         'Register now',
                    //         style: TextStyle(
                    //           fontFamily: 'LuloClean',
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
              SizedBox(width: 25),
              Container(
                height: screenSize.height * 0.5,
                width: screenSize.width / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFF27346B),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/stea.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 25),
                    Text(
                      'News',
                      style: TextStyle(
                        fontFamily: 'LuloClean',
                        color: Colors.white,
                      ),
                    ),
                    // SizedBox(height: 25),
                    // InkWell(
                    //   onTap: () {
                    //     // Add your desired onTap functionality here
                    //   },
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       border: Border.all(
                    //         color: Colors.white,
                    //         width: 2.0,
                    //       ),
                    //       borderRadius: BorderRadius.circular(20),
                    //     ),
                    //     child: Padding(
                    //       padding: EdgeInsets.all(8.0),
                    //       child: Text(
                    //         'Learn More',
                    //         style: TextStyle(
                    //           fontFamily: 'LuloClean',
                    //           color: Colors.white,
                    //         ),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              ),
            ],
          );
  }
}
