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
        preferredSize: Size(screenSize.width, 40),
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
                  Image.asset('assets/images/Icon_App_Studio@2x.png'),
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
      body: Stack(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  colors: [
                    Color.fromARGB(1, 60, 55, 92),
                    Color.fromARGB(1, 30, 27, 46),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
