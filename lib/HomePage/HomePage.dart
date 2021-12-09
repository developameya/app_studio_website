import 'package:app_studio_webstie/HomePage/FeaturesElement.dart';
import 'package:app_studio_webstie/HomePage/ScreenshotSection.dart';
import 'package:flutter/material.dart';
import 'Text/TextList.dart';

TextList textList = TextList();

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _isHovering = [
    false,
    false,
    false,
    false,
  ];
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width, 45),
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(17, 15, 18, 1),
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                blurRadius: 5.0, // soften the shadow
                spreadRadius: 0.1, //extend the shadow
                offset: Offset(
                  0.0, // Move to right 10  horizontally
                  0.1, // Move to bottom 10 Vertically
                ),
              )
            ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SizedBox(width: screenSize.width / 8),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 8.0,
                      bottom: 8.0,
                    ),
                    child: Image.asset(
                      'assets/images/Icon_App_Studio@2x.png',
                      height: 25,
                    ),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        _isHovering[0] = value;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      'FEATURES',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 12,
                        color: _isHovering[0] ? Colors.blue[200] : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        _isHovering[1] = value;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      'SCREENSHOTS',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 12,
                        color: _isHovering[1] ? Colors.blue[200] : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                ],
              ),
              Row(
                children: [
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        _isHovering[2] = value;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      'BLOG',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 12,
                        color: _isHovering[2] ? Colors.blue[200] : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: 30),
                  InkWell(
                    onHover: (value) {
                      setState(() {
                        _isHovering[3] = value;
                      });
                    },
                    onTap: () {},
                    child: Text(
                      'CONTACT',
                      style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 12,
                        color: _isHovering[3] ? Colors.blue[200] : Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(width: screenSize.width / 8),
                ],
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: screenSize.height / 1.5,
                  width: screenSize.width,
                  decoration: BoxDecoration(
                    gradient: RadialGradient(
                      center: Alignment(-3, -5),
                      radius: 10,
                      colors: [
                        Color(0xff998CEB),
                        Color(0xff4D4676),
                      ],
                    ),
                  ),
                ),
                Container(
                  constraints: BoxConstraints(
                    maxWidth: screenSize.width,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 180),
                        child: Image.asset(
                          'assets/images/iPhone hero image.png',
                          height: 889,
                        ),
                      ),
                      SizedBox(width: 80),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(right: 180),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Curabitur dapibus arcu leo.',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w100,
                                  color: Colors.white,
                                  fontSize: 40,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                'Sed velit lectus, porttitor eu convallis sit amet, semper eget mauris. Integer in pulvinar mauris. Donec facilisis placerat magna sed cursus.',
                                style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                  fontSize: 28,
                                ),
                              ),
                              SizedBox(height: 80),
                              InkWell(
                                onTap: () {},
                                child: Image.asset(
                                  'assets/images/Icon App Store@2x.png',
                                  width: 150,
                                ),
                              ),
                              SizedBox(height: 200),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 250),
            Container(
              width: screenSize.width,
              // color: Colors.teal,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 180.0),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 250),
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Text(
                                'Why should you use Signary?',
                                style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.w200,
                                    fontSize: 40),
                              ),
                              Container(
                                height: 2,
                                width: 550,
                                color: Color(0xff998CEB),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    Row(
                      children: [
                        FeaturesElement(
                          imagePath: 'assets/images/square_and_pencil.png',
                          headerText: textList.getFeatures(at: 0).Header,
                          bodyText: textList.getFeatures(at: 0).Body,
                        ),
                        SizedBox(width: 300),
                        FeaturesElement(
                          imagePath: 'assets/images/circle_and_dots.png',
                          headerText: textList.getFeatures(at: 1).Header,
                          bodyText: textList.getFeatures(at: 1).Body,
                        ),
                      ],
                    ),
                    SizedBox(height: 100),
                    Row(
                      children: [
                        FeaturesElement(
                          imagePath: 'assets/images/pencil.png',
                          headerText: textList.getFeatures(at: 2).Header,
                          bodyText: textList.getFeatures(at: 2).Body,
                        ),
                        SizedBox(width: 300),
                        FeaturesElement(
                          imagePath: 'assets/images/Trash.png',
                          headerText: textList.getFeatures(at: 3).Header,
                          bodyText: textList.getFeatures(at: 3).Body,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 80),
            ScreenshotSection(screenSize: screenSize),
          ],
        ),
      ),
    );
  }
}
