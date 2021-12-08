import 'package:flutter/material.dart';

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
        preferredSize: Size(screenSize.width, 35),
        child: Container(
          decoration:
              BoxDecoration(color: Color.fromRGBO(17, 15, 18, 1), boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 5.0, // soften the shadow
              spreadRadius: 0.1, //extend the shadow
              offset: Offset(
                0.0, // Move to right 10  horizontally
                0.1, // Move to bottom 10 Vertically
              ),
            )
          ]),
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
                      height: 22,
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
        child: Stack(
          children: [
            Container(
              height: 560,
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
              child: Padding(
                padding: const EdgeInsets.fromLTRB(700, 100, 100, 50),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 80),
                      child: Text(
                        'Curabitur dapibus arcu leo.',
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                          fontSize: 40,
                        ),
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Sed velit lectus, porttitor eu convallis sit amet, semper eget mauris. Integer in pulvinar mauris. Donec facilisis placerat magna sed cursus.',
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.w100,
                        color: Colors.white,
                        fontSize: 32,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 100, top: 50),
              child: Image.asset(
                'assets/images/iPhone hero image.png',
                height: 889,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
