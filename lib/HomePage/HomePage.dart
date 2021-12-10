import 'package:app_studio_webstie/HomePage/FeaturesSection.dart';
import 'package:app_studio_webstie/HomePage/HeroSection.dart';
import 'package:app_studio_webstie/HomePage/ScreenshotSection.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List _isHovering = [false, false, false, false];

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
            HeroSection(screenSize: screenSize),
            SizedBox(height: 200),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 180.0),
              child: FeaturesSection(),
            ),
            SizedBox(height: 80),
            ScreenshotSection(screenSize: screenSize),
            Container(
              width: screenSize.width,
              height: 30,
              color: Color.fromRGBO(17, 15, 18, 1),
              child: Center(
                child: Text(
                  'Copyright ©2021 Ameya App Studio',
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
