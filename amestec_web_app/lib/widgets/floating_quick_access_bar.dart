import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

import '../mywidgets/count_down.dart';

class FloatingQuickAccessBar extends StatefulWidget {
  const FloatingQuickAccessBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  final Size screenSize;

  @override
  _FloatingQuickAccessBarState createState() => _FloatingQuickAccessBarState();
}

class _FloatingQuickAccessBarState extends State<FloatingQuickAccessBar> {
  List _isHovering = [false, false, false, false];
  List<Widget> rowElements = [];

  List<String> items = ['Au mai ramas', 'Dates', 'People', 'Experience'];
  List<IconData> icons = [
    Icons.location_on,
    Icons.date_range,
    Icons.people,
    Icons.wb_sunny
  ];

  List<Widget> generateRowElements() {
    rowElements.clear();
    Widget elementTile = InkWell(
        child: Row(
      children: [
        Text("Au mai ramas  "),
        CountDownTimer(
          secondsRemaining: 3600 * 24,
          whenTimeExpires: () {
            setState(() {
              // hasTimerStopped = true;
            });
          },
          countDownTimerStyle: TextStyle(
            color: Color(0XFFf5a623),
            fontSize: 17.0,
            height: 1.2,
          ),
        ),
      ],
    ));
    Widget spacer = SizedBox(
      height: widget.screenSize.height / 20,
      child: VerticalDivider(
        width: 1,
        color: Colors.blueGrey[100],
        thickness: 1,
      ),
    );
    rowElements.add(elementTile);

    return rowElements;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      heightFactor: 1,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.screenSize.height * 0.40,
          left: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
          right: ResponsiveWidget.isSmallScreen(context)
              ? widget.screenSize.width / 12
              : widget.screenSize.width / 5,
        ),
        child: ResponsiveWidget.isSmallScreen(context)
            ? Column(
                children: [
                  ...Iterable<int>.generate(items.length).map(
                    (int pageIndex) => Padding(
                      padding:
                          EdgeInsets.only(top: widget.screenSize.height / 80),
                      child: Card(
                        elevation: 4,
                        child: Padding(
                          padding: EdgeInsets.only(
                              top: widget.screenSize.height / 45,
                              bottom: widget.screenSize.height / 45,
                              left: widget.screenSize.width / 20),
                          child: Row(
                            children: [
                              Icon(
                                icons[pageIndex],
                                color: Colors.blueGrey,
                              ),
                              SizedBox(width: widget.screenSize.width / 20),
                              InkWell(
                                splashColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                onTap: () {},
                                child: Text(
                                  items[pageIndex],
                                  style: TextStyle(
                                      color: Colors.blueGrey, fontSize: 16),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Card(
                elevation: 5,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: widget.screenSize.height / 50,
                    bottom: widget.screenSize.height / 50,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: generateRowElements(),
                  ),
                ),
              ),
      ),
    );
  }
}
