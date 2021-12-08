import 'package:flutter/material.dart';
import 'package:app_studio_webstie/NavBar/NavBarElement.dart';

NavBarElement navBarElement = NavBarElement();

class NavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavBar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return MobileNavBar();
        } else {
          return MobileNavBar();
        }
      },
    );
  }
}

class DesktopNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxWidth: 1366),
      height: 40,
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
        children: <Widget>[
          Row(
            children: [
              SizedBox(width: 30),
              Image.asset(
                'assets/images/Icon_App_Studio@2x.png',
                width: 150,
              ),
              SizedBox(width: 30),
              navBarElement.button(ButtonTitle: 'FEATURES'),
              SizedBox(width: 30),
              navBarElement.button(ButtonTitle: 'SCREENSHOTS'),
            ],
          ),
          Row(
            children: [
              navBarElement.button(ButtonTitle: 'BLOG'),
              SizedBox(width: 30),
              navBarElement.button(ButtonTitle: 'CONTACT'),
              SizedBox(width: 30),
            ],
          ),
        ],
      ),
    );
  }
}

class MobileNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
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
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 30),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Image.asset(
                  'assets/images/Icon_App_Studio@2x.png',
                  width: 150,
                ),
              ),
              SizedBox(width: 30),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                navBarElement.button(ButtonTitle: 'FEATURES'),
                SizedBox(width: 30),
                navBarElement.button(ButtonTitle: 'SCREENSHOTS'),
                SizedBox(width: 30),
                navBarElement.button(ButtonTitle: 'BLOG'),
                SizedBox(width: 30),
                navBarElement.button(ButtonTitle: 'CONTACT'),
                SizedBox(width: 30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
