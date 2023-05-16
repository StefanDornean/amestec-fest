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
              Flexible(
              child: FittedBox(
                fit: BoxFit.scaleDown,
              child: SingleChildScrollView(
              child: Container(
                height: screenSize.height * 0.5,
                width: screenSize.width / 6,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xFFC32B68),
                ),
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(20),
                      child: Image.asset(
                        'assets/images/stea.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(height: 15),
                   
                    Text(
                      
                      'Countdown',
                      
                      style: TextStyle(
                        fontFamily: 'LuloClean',
                        color: Colors.white,
                      ),
                    ),
                
                    SizedBox(height: 15),
                  
                       InkWell(
                        onTap: () {

                        },
                      
                    
                  /*  InkWell(
                      onTap: () {
                        // Add your desired onTap functionality here
                      },*/
                      child: Container(
                         
                        decoration: BoxDecoration(
                 
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                        
                          child: Text(
                         
                            'Register now',
                            style: TextStyle(
                              fontFamily: 'LuloClean',
                              color: Colors.white,
                            ),
                            
                          ),
                          
                        ),
                        
                      ),
                  
                    ),
                
                  ],
                ),
            
                ),
                
              ),
              ),
              ),
              SizedBox(width: 25),
              Flexible(
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  child: SingleChildScrollView(
            child:  Container(
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
                    SizedBox(height: 25),
                      SingleChildScrollView(
                  child:  InkWell(
                      onTap: () {
                        
                        // Add your desired onTap functionality here
                      },
                      child: Container(  
 
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Padding(
                          
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Learn More',
                            style: TextStyle(
                              fontFamily: 'LuloClean',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                      ),
                  ],
                ),
              ),
                ),
            
              ),
              ),
            ],
        );
  }
}