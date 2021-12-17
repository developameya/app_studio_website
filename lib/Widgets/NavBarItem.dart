import 'package:app_studio_webstie/Constants/AppImages.dart';
import 'package:app_studio_webstie/Pages/ContactPage.dart';
import 'package:flutter/material.dart';
import 'NavButton.dart';

class NavBarItem {
  List<Widget> NavButtonList({
    required BuildContext context,
    double? verticalPadding,
    double? horizontalPadding,
  }) {
    return <Widget>[
      NavButton(
        title: 'features',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {},
      ),
      NavButton(
        title: 'screenshots',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {},
      ),
      NavButton(
        title: 'blog',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {},
      ),
      NavButton(
        title: 'support',
        verticaPadding: verticalPadding,
        horizontalPadding: horizontalPadding,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ContactPage(),
            ),
          );
        },
      ),
    ];
  }

  Image NavLogo({double? height}) {
    return Image.asset(
      logoImage,
      height: height,
    );
  }
}
