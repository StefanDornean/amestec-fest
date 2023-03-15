import 'package:explore/widgets/responsive.dart';
import 'package:flutter/material.dart';

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
                          'assets/images/cover.jpg',
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
                      'assets/images/cover.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(width: 25),
              Container(
                height: screenSize.height * 0.5,
                width: screenSize.width / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(180),
                  color: Color.fromARGB(255, 204, 47, 99),
                ),
              ),
              SizedBox(width: 25),
              Container(
                height: screenSize.height * 0.5,
                width: screenSize.width / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(180),
                  color: Color.fromARGB(255, 163, 44, 181),
                ),
              ),
            ],
          );
  }
}
