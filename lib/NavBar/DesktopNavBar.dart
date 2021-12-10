import 'package:app_studio_webstie/Widgets/ResponsiveWidget.dart';
import 'package:flutter/material.dart';
import 'package:app_studio_webstie/NavBar/NavBarElement.dart';

NavBarButton navBarElement = NavBarButton();

class DesktopNavBar extends StatefulWidget {
  final Size screenSize;
  const DesktopNavBar({
    Key? key,
    required this.screenSize,
  }) : super(key: key);

  @override
  _DesktopNavBarState createState() => _DesktopNavBarState();
}

class _DesktopNavBarState extends State<DesktopNavBar> {
  List _isHovering = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0xff2C272E),
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
      child: Padding(
        padding: ResponsiveWidget.isMediumScreen(context)
            ? EdgeInsets.symmetric(horizontal: widget.screenSize.width / 42)
            : EdgeInsets.symmetric(horizontal: widget.screenSize.width / 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  'assets/images/Icon_App_Studio@2x.png',
                ),
                SizedBox(width: 30),
                InkWell(
                  onHover: (value) {
                    setState(
                      () {
                        _isHovering[0] = value;
                      },
                    );
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
              ],
            ),
          ],
        ),
      ),
    );
  }
}
