import 'package:flutter/material.dart';

class MobileDrawer extends StatefulWidget {
  const MobileDrawer({Key? key}) : super(key: key);

  @override
  _MobileDrawerState createState() => _MobileDrawerState();
}

class _MobileDrawerState extends State<MobileDrawer> {
  List _isHovering = [false, false, false, false];
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Color(0xff2C272E),
        child: Column(
          children: [
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
      ),
    );
  }
}
