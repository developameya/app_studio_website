import 'package:flutter/material.dart';
import 'package:app_studio_webstie/NavBar/NavBarElement.dart';

NavBarElement navBarElement = NavBarElement();

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return PreferredSize(
      preferredSize: Size(screenSize.width, 1000),
      child: Container(
        color: Color.fromRGBO(17, 15, 18, 1),
        child: Row(
          children: [Image.asset('Icon_App_Studio@2x.png')],
        ),
      ),
    );
  }
}
